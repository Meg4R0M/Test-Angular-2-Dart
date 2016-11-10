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
import 'view_container_ref.dart';
import 'package:angular2/src/core/di/injector.dart' show Injector;
import 'app_element.dart';
import 'component_factory.dart' show ComponentFactory, ComponentRef;
import 'element_ref.dart';
import 'template_ref.dart';
import 'view_ref.dart' show EmbeddedViewRef, ViewRef, ViewRefImpl;
import 'package:angular2/src/core/di/injector.template.dart' as i0;
import 'app_element.template.dart' as i1;
import 'component_factory.template.dart' as i2;
import 'element_ref.template.dart' as i3;
import 'template_ref.template.dart' as i4;
import 'view_ref.template.dart' as i5;
export 'view_container_ref.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
