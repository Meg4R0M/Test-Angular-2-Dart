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
import 'debug_renderer.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Inject, Injectable;
import 'package:angular2/src/core/render/api.dart' show Renderer, RootRenderer, RenderComponentType, RenderDebugInfo;
import 'package:angular2/src/debug/debug_node.dart' show DebugNode, DebugElement, EventListener, getDebugNode, indexDebugNode, inspectNativeElement, removeDebugNodeFromIndex;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import '../platform/dom/dom_renderer.dart' show DomRenderer, DomRootRenderer;
import '../platform/dom/dom_tokens.dart' show DOCUMENT;
import '../platform/dom/events/event_manager.dart' show EventManager;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/render/api.template.dart' as i1;
import 'package:angular2/src/debug/debug_node.template.dart' as i2;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i3;
import '../platform/dom/dom_renderer.template.dart' as i4;
import '../platform/dom/dom_tokens.template.dart' as i5;
import '../platform/dom/events/event_manager.template.dart' as i6;
export 'debug_renderer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DebugDomRootRenderer, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[dynamic, const Inject(DOCUMENT)], const <dynamic>[EventManager]],
(dynamic document, EventManager eventManager) => new DebugDomRootRenderer(document, eventManager),
const <dynamic>[DomRootRenderer])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
}
