import 'package:dart_basic_2/src/components/async/future.dart';
import 'package:dart_basic_2/src/components/isolates/isolates.dart';
import 'package:dart_basic_2/src/components/class/InheritanceClass.dart';
import 'package:dart_basic_2/src/components/class/InvokableClass.dart';
import 'package:dart_basic_2/src/components/class/abstractClass.dart';
import 'package:dart_basic_2/src/components/class/enumClass.dart';
import 'package:dart_basic_2/src/components/class/exceptionClass.dart';
import 'package:dart_basic_2/src/components/class/extensionsClass.dart';
import 'package:dart_basic_2/src/components/class/firstClass.dart';
import 'package:dart_basic_2/src/components/class/constructorsClass.dart';
import 'package:dart_basic_2/src/components/class/getterSetterClass.dart';
import 'package:dart_basic_2/src/components/class/interfaceClass.dart';
import 'package:dart_basic_2/src/components/class/mixinsClass.dart';
import 'package:dart_basic_2/src/components/class/staticsClass.dart';
import 'package:dart_basic_2/src/components/collection-type/dictionary.dart';
import 'package:dart_basic_2/src/components/collection-type/list.dart';
import 'package:dart_basic_2/src/components/collection-type/set.dart';
import 'package:dart_basic_2/src/components/func/anonymousFunc.dart';
import 'package:dart_basic_2/src/components/func/secondFunc.dart';
import 'package:dart_basic_2/src/components/func/cascateNotation.dart';
import 'package:dart_basic_2/src/components/func/firstFunc.dart';
import 'package:dart_basic_2/src/components/func/funcScope.dart';
import 'package:dart_basic_2/src/components/library/firstLibrary.dart';
import 'package:dart_basic_2/src/components/primitive-type/generics.dart';
import 'package:dart_basic_2/src/components/loop/collectionLoop.dart';
import 'package:dart_basic_2/src/components/loop/doWhile.dart';
import 'package:dart_basic_2/src/components/loop/for-loop.dart';
import 'package:dart_basic_2/src/components/loop/whileLoop.dart';
import 'package:dart_basic_2/src/components/modifier/modifier.dart';
import 'package:dart_basic_2/src/components/null-safety/nullSafety.dart';
import 'package:dart_basic_2/src/components/operations/operations.dart';
import 'package:dart_basic_2/src/components/primitive-type/stringInterpolation.dart';
import 'package:dart_basic_2/src/components/primitive-type/type.dart';
import 'package:dart_basic_2/src/components/selection-constructors/ifElse.dart';
import 'package:dart_basic_2/src/components/selection-constructors/switchCase.dart';
import 'package:dart_basic_2/src/components/assertions/assertions.dart';
import 'package:dart_basic_2/src/components/async/stream.dart';

/// Per far partire un'app:
/// dart run main.dart
/// Per far partire un'app con degli argomenti:
/// dart run main.dart arg1 arg2

void main() {
  //tipi:
  print("------------------------type------------------------");
  type();
  //list = array in dart:
  print("------------------------List------------------------");
  list();
  // set = oggetti in dart:
  print("------------------------Set-------------------------");
  set();
  // mappe in dart:
  print("------------------------Dizionari------------------------");
  dictionary();
  print(
      "------------------------Interpolazione Stringhe------------------------");
  stringInterpolation();
  print("------------------------late------------------------");
  late();
  print("------------------------const------------------------");
  costante();
  print("------------------------final------------------------");
  finale();
  print("------------------------Null-safety------------------------");
  nullSafety();
  print("------------------------peratori------------------------");
  operatori();
  print("----------------------Costruttori di selezione----------------------");
  print("----------------------if - else----------------------");
  ifElse();
  print("----------------------switch----------------------");
  switchCase();
  print("----------------------Ciclo for----------------------");
  forLoop();
  print("----------------------Ciclo while----------------------");
  whileLoop();
  print("----------------------Ciclo do while----------------------");
  doWhileLoop();
  print("----------------------Ciclare una lista----------------------");
  collectionLoop();
  print("----------------------Asserzioni----------------------");
  assertionsTrue();
  assertionsFalse();
  print("----------------------Funzioni----------------------");
  firstFunc();
  print("----------------------Arrow Func----------------------");
  secondFunc();
  print("----------------------Funzione Anonima----------------------");
  anonymousFunc();
  print("----------------------Scope Funzione----------------------");
  funcScope();
  print("----------------------Cascate Notation----------------------");
  cascateNotation();
  print("----------------------Classi----------------------");
  firstClass();
  print("----------------------Costruttori----------------------");
  constructors();
  print("----------------------Getter e setter----------------------");
  getterSetterCass();
  print("----------------------Ereditarietà Classi----------------------");
  inheritanceClass();
  print("----------------------Classi Astratte----------------------");
  abstractClass();
  print("----------------------Interfacce----------------------");
  interfaceClass();
  print("----------------------Exstensions----------------------");
  extensionsClass();
  print("----------------------Mixins----------------------");
  mixinsClass();
  print("----------------------Generics----------------------");
  generics();
  print(
      "----------------------Attributi e metodi statici----------------------");
  staticsClass();
  print("----------------------Classi invocabili----------------------");
  classiInvocabili();
  print("----------------------Enum----------------------");
  enumClass();
  print("----------------------Eccezioni----------------------");
  eccezioniClass();
  print("----------------------Librerie----------------------");
  firstLibrary();
  print("----------------------Chiamate asincrone:----------------------");
  print("----------------------Future----------------------");
  future();
  ("----------------------Stream----------------------");
  stream();
  future();
  ("----------------------Isolate----------------------");
  isolates();
}
