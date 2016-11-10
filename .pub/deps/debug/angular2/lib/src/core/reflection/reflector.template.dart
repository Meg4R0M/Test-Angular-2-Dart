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
import 'reflector.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'platform_reflection_capabilities.dart';
import 'reflector_reader.dart' show ReflectorReader;
import 'types.dart';
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'platform_reflection_capabilities.template.dart' as i1;
import 'reflector_reader.template.dart' as i2;
import 'types.template.dart' as i3;
export 'reflector.dart';
export 'platform_reflection_capabilities.dart';
export 'types.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
