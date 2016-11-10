import 'dart:async';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import '../hero.dart';
import 'package:angular2_tour_of_heroes/service/champion_service.dart';

@Component(
    selector: 'my-hero-detail',
    templateUrl: 'champion_detail_component.html',
    styleUrls: const ['champion_detail_component.css'])
class HeroDetailComponent implements OnInit {
  Hero hero;
  final HeroService _heroService;
  final RouteParams _routeParams;

  HeroDetailComponent(this._heroService, this._routeParams);

  Future<Null> ngOnInit() async {
    var idString = _routeParams.get('id');
    var id = int.parse(idString, onError: (_) => null);
    if (id != null) hero = await (_heroService.getHero(id));
  }

  Future<Null> save() async {
    await _heroService.update(hero);
    goBack();
  }

  void goBack() {
    window.history.back();
  }
}
