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
import 'lexer.dart';
import 'package:angular2/src/compiler/chars.dart' show isWhitespace, $EOF, $HASH, $TILDA, $CARET, $PERCENT, $$, $_, $COLON, $SQ, $DQ, $EQ, $SLASH, $BACKSLASH, $PERIOD, $STAR, $PLUS, $LPAREN, $RPAREN, $PIPE, $COMMA, $SEMICOLON, $MINUS, $BANG, $QUESTION, $AT, $AMPERSAND, $GT, $a, $A, $z, $Z, $0, $9, $FF, $CR, $LF, $VTAB;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show resolveEnumToken;
import 'package:angular2/src/compiler/chars.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
export 'lexer.dart';
export 'package:angular2/src/compiler/chars.dart' show $EOF, $AT, $RBRACE, $LBRACE, $LBRACKET, $RBRACKET, $LPAREN, $RPAREN, $COMMA, $COLON, $SEMICOLON, isWhitespace;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
