import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:angular2/core.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import '../hero.dart';

@Injectable()
class InMemoryDataService extends MockClient {
  static final _initialHeroes = [
    {'id': 1, 'name': 'Nautilus'},
    {'id': 2, 'name': 'Nami'},
    {'id': 3, 'name': 'Malphite'},
    {'id': 4, 'name': 'Lux'},
    {'id': 5, 'name': 'Lulu'},
    {'id': 6, 'name': 'Brand'},
    {'id': 7, 'name': 'Blitzcrank'},
    {'id': 8, 'name': 'Bard'},
    {'id': 9, 'name': 'Annie'},
    {'id': 10, 'name': 'Miss Fortune'},
    {'id': 11, 'name': 'Braum'},
    {'id': 12, 'name': 'Leona'},
    {'id': 13, 'name': 'Thresh'},
    {'id': 14, 'name': 'Sona'},
    {'id': 15, 'name': 'Karma'},
    {'id': 16, 'name': 'Fiddlesticks'},
    {'id': 17, 'name': 'Alistar'},
    {'id': 18, 'name': 'Morgana'},
    {'id': 19, 'name': 'Janna'},
    {'id': 20, 'name': 'Ivern'}
  ];
  static final List<Hero> _heroesDb =
      _initialHeroes.map((json) => new Hero.fromJson(json)).toList();
  static int _nextId = _heroesDb.map((hero) => hero.id).reduce(max) + 1;

  static Future<Response> _handler(Request request) async {
    var data;
    switch (request.method) {
      case 'GET':
        String prefix = request.url.queryParameters['name'] ?? '';
        final regExp = new RegExp(prefix, caseSensitive: false);
        data = _heroesDb.where((hero) => hero.name.contains(regExp)).toList();
        break;
      case 'POST':
        var name = JSON.decode(request.body)['name'];
        var newHero = new Hero(_nextId++, name);
        _heroesDb.add(newHero);
        data = newHero;
        break;
      case 'PUT':
        var heroChanges = new Hero.fromJson(JSON.decode(request.body));
        var targetHero = _heroesDb.firstWhere((h) => h.id == heroChanges.id);
        targetHero.name = heroChanges.name;
        data = targetHero;
        break;
      case 'DELETE':
        var id = int.parse(request.url.pathSegments.last);
        _heroesDb.removeWhere((hero) => hero.id == id);
        // No data, so leave it as null.
        break;
      default:
        throw 'Unimplemented HTTP method ${request.method}';
    }
    return new Response(JSON.encode({'data': data}), 200,
        headers: {'content-type': 'application/json'});
  }

  InMemoryDataService() : super(_handler);
}
