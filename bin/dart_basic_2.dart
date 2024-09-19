import 'package:dart_basic_2/dart_basic_2.dart';

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
  print("------------------------operatori------------------------");
  operatori();
  print("----------------------Costruttori di selezione----------------------");
  print("----------------------if - else----------------------");
  ifElse();
  print("----------------------switch----------------------");
  switchCase();
  print(
      "----------------------Costruttori di Iterazioni-----------------------");
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
