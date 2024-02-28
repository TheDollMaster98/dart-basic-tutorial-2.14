void inheritanceClass() {
  final pippo = Persona('Pippo', "Boh", 55);
  final lavoratore1 = Lavoratore(5, "Bau", "Pinci", "Limpidù", 10, "M");

  print(lavoratore1);
  pippo.parla();
  lavoratore1.walk();
  lavoratore1.parla();
}

/// ereditarietà (override = polimorfismo):
/// estendo le funzionalità di una classe padre
/// definendo una nuova classe figlia
/// che ne ereditì le su caratteristiche
///  ossia metodi ed attribuiti

class Lavoratore extends Persona {
  int _exp;
  String _job;

  Lavoratore(this._exp, this._job, String name, String surname, int age,
      [String gender = "N/D"])
      : super(name, surname, age, gender);

  String seniority() {
    String seniority;

    if (_exp < 3) {
      seniority = 'Junior';
    } else if (_exp > 5) {
      seniority = 'Senior';
    } else {
      seniority = 'Middle';
    }

    return seniority;
  }

  @override
  String toString() => '''
  ${super.toString()}
  Lavoro $_job,
  Espereinza $_exp
  ''';

  @override
  void parla() => print("sono un lavoratore!");
}

class Persona {
  String _name;
  String _surname;
  int _age;
  String? _gender; // Parametro opzionale

  // Costruttore principale
  Persona(this._name, this._surname, this._age, [this._gender = "N/D"]);

  // Costruttori aggiuntivi con specifica del genere
  Persona.Boy(this._name, this._surname, this._age) : _gender = "M";
  Persona.Girl(this._name, this._surname, this._age) : _gender = "F";

  // Costruttore di tipo factory per creare un oggetto Persona da un JSON
  factory Persona.fromJson(Map<String, dynamic> json) {
    final name = json["name"] as String;
    final surname = json["surname"] as String;
    final age = json["age"] as int;

    return Persona(name, surname, age);
  }

  /// meta data che ci dice quando un metodo cessa di essere supportato
  /// invitando l'utente ad usare altro
  @Deprecated("Cammina non è più disponibile!")
  void walk() => print("Sto camminando");
  void parla() => print("Ciao!");

  // getter e setter:
  /// non viene usato molto, come in Angular che si settano in altro modo.
  String get name => _name;
  set name(String name) => _name = name;

  @override
  String toString() => '''
Nome: $_name,
  Cognome: $_surname,
  Età: $_age,
  Genere: $_gender
  ''';
}
