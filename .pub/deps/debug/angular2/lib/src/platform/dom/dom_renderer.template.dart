// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
import 'dom_renderer.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/view_compiler/view_compiler_utils.dart' show TEMPLATE_COMMENT_TEXT, TEMPLATE_BINDINGS_EXP;
import 'package:angular2/src/core/di.dart' show Inject, Injectable;
import 'package:angular2/src/core/metadata.dart' show ViewEncapsulation;
import 'package:angular2/src/core/render/api.dart' show Renderer, RootRenderer, RenderComponentType, RenderDebugInfo, sharedStylesHost;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show Json;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'dom_tokens.dart' show DOCUMENT;
import 'events/event_manager.dart' show EventManager;
import 'package:angular2/src/compiler/view_compiler/view_compiler_utils.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/metadata.template.dart' as i2;
import 'package:angular2/src/core/render/api.template.dart' as i3;
import 'package:angular2/src/facade/exceptions.template.dart' as i4;
import 'package:angular2/src/facade/lang.template.dart' as i5;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i6;
import 'dom_tokens.template.dart' as i7;
import 'events/event_manager.template.dart' as i8;
export 'dom_renderer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DomRootRenderer, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[dynamic, const Inject(DOCUMENT)], const <dynamic>[EventManager]],
(dynamic document, EventManager eventManager) => new DomRootRenderer(document, eventManager),
const <dynamic>[RootRenderer])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
}
