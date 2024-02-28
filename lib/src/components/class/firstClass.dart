void firstClass() {
  final pinci = PersonaFirstClass()
    ..name = "Pinci"
    ..surname = "Limpidù"
    ..age = 10;

  print(pinci);
}

class PersonaFirstClass {
  var name;
  var surname;
  var age;
  void walk() => print("Sto camminando");
  void saluta() => print("Ciao!");

  /// metodo di una classe sta effettivamente sovrascrivendo un meto
  /// della sua classe genitore. Questa annotazione è utile per garantire
  /// che stai seguendo correttamente l'ereditarietà e il polimorfismo.
  ///
  /// in questo caso ssovrascrive Object.toString() di Dart base
  /// restitutendo le info
  @override
  String toString() => '''
  Nome: $name,
  Cognome: $surname,
  Età: $age.
  ''';
}
