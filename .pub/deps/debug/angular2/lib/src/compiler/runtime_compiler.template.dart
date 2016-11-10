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
import 'runtime_compiler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/di.dart' show Injectable, Injector;
import 'package:angular2/src/core/linker/app_element.dart';
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentFactory, NgViewFactory;
import 'package:angular2/src/core/linker/component_resolver.dart' show ComponentResolver;
import 'package:angular2/src/core/linker/injector_factory.dart' show CodegenInjectorFactory;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'compile_metadata.dart' show createHostComponentMeta, CompileDirectiveMetadata, CompilePipeMetadata, CompileIdentifierMetadata;
import 'directive_normalizer.dart' show DirectiveNormalizer;
import 'output/interpretive_injector.dart' show InterpretiveInjectorInstanceFactory;
import 'output/interpretive_view.dart' show InterpretiveAppViewInstanceFactory;
import 'output/output_ast.dart' as ir;
import 'output/output_interpreter.dart' show interpretStatements;
import 'runtime_metadata.dart' show RuntimeMetadataResolver;
import 'style_compiler.dart' show StyleCompiler, StylesCompileDependency, StylesCompileResult;
import 'template_ast.dart' show TemplateAst;
import 'template_parser.dart' show TemplateParser;
import 'view_compiler/injector_compiler.dart' show InjectorCompiler;
import 'view_compiler/view_compiler.dart' show ViewCompiler;
import 'xhr.dart' show XHR;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/linker/app_element.template.dart' as i1;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i2;
import 'package:angular2/src/core/linker/component_resolver.template.dart' as i3;
import 'package:angular2/src/core/linker/injector_factory.template.dart' as i4;
import 'package:angular2/src/facade/exceptions.template.dart' as i5;
import 'compile_metadata.template.dart' as i6;
import 'directive_normalizer.template.dart' as i7;
import 'output/interpretive_injector.template.dart' as i8;
import 'output/interpretive_view.template.dart' as i9;
import 'output/output_ast.template.dart' as i10;
import 'output/output_interpreter.template.dart' as i11;
import 'runtime_metadata.template.dart' as i12;
import 'style_compiler.template.dart' as i13;
import 'template_ast.template.dart' as i14;
import 'template_parser.template.dart' as i15;
import 'view_compiler/injector_compiler.template.dart' as i16;
import 'view_compiler/view_compiler.template.dart' as i17;
import 'xhr.template.dart' as i18;
export 'runtime_compiler.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(RuntimeCompiler, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[RuntimeMetadataResolver], const <dynamic>[DirectiveNormalizer], const <dynamic>[TemplateParser], const <dynamic>[StyleCompiler], const <dynamic>[ViewCompiler], const <dynamic>[XHR], const <dynamic>[InjectorCompiler]],
(RuntimeMetadataResolver _runtimeMetadataResolver, DirectiveNormalizer _templateNormalizer, TemplateParser _templateParser, StyleCompiler _styleCompiler, ViewCompiler _viewCompiler, XHR _xhr, InjectorCompiler _injectorCompiler) => new RuntimeCompiler(_runtimeMetadataResolver, _templateNormalizer, _templateParser, _styleCompiler, _viewCompiler, _xhr, _injectorCompiler),
const <dynamic>[ComponentResolver])
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
i9.initReflector();
i10.initReflector();
i11.initReflector();
i12.initReflector();
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
i18.initReflector();
}
