void constructors() {
  // Creazione di oggetti di tipo Persona utilizzando vari costruttori
  final pippo = Persona1(name: 'Pippo', surname: "Boh", age: 55);
  final pinci = PersonaContructor("Pinci", "Limpidù", 10);
  final cipolla = PersonaContructor.Girl("Cipolla", "Miao", 10);
  final cip = Persona3("Cip", "Miao", 5);

  // Creazione di un oggetto Persona utilizzando un costruttore di tipo factory
  final json = {
    "name": "json",
    "surname": "File",
    "age": 5,
  };
  final jsonFile = PersonaContructor.fromJson(json);

  // Stampa degli oggetti
  print('Persona M: $pinci');
  print('Persona F: $cipolla');
  print('Persona json: $jsonFile');
  print('Persona 1: $pippo');
  print('Persona 2: $cip');
}

/**
 * Costruttori in Dart:
 * - Il costruttore di default viene fornito da Dart se non viene specificato alcun costruttore.
 * - Possono essere definiti più costruttori all'interno di una classe.
 * - I costruttori di tipo factory sono utili per creare funzioni che non istanziano nuovi oggetti ma effettuano manipolazioni intermedie.
 */

// Opzione 1:
// Migliore pratica
class PersonaContructor {
  final String _name;
  final String _surname;
  final int _age;
  final String? _gender; // Parametro opzionale

  // Costruttore principale
  const PersonaContructor(this._name, this._surname, this._age,
      [this._gender = "N/D"]);

  // Costruttori aggiuntivi con specifica del genere
  const PersonaContructor.Boy(this._name, this._surname, this._age)
      : _gender = "M";
  const PersonaContructor.Girl(this._name, this._surname, this._age)
      : _gender = "F";

  // Costruttore di tipo factory per creare un oggetto Persona da un JSON
  factory PersonaContructor.fromJson(Map<String, dynamic> json) {
    final name = json["name"] as String;
    final surname = json["surname"] as String;
    final age = json["age"] as int;

    return PersonaContructor(name, surname, age);
  }

  @override
  String toString() => '''
  Nome: $_name,
  Cognome: $_surname,
  Età: $_age,
  Genere: $_gender
  ''';
}

// Opzione 2:
// Utilizzo di costruttori nominati
class Persona1 {
  final String name;
  final String surname;
  final int age;

  // Costruttore nominale con parametri obbligatori
  const Persona1({
    required this.name,
    required this.surname,
    required this.age,
  });

  @override
  String toString() => '''
  Nome: $name,
  Cognome: $surname,
  Età: $age.
  ''';
}

// Opzione 3:
// Costruttori tradizionali senza utilizzare 'final'
class Persona3 {
  var _name;
  var _surname;
  var _age;

  // Costruttore tradizionale
  Persona3(String name, String surname, int age) {
    _name = name;
    _surname = surname;
    _age = age;
  }

  @override
  String toString() => '''
  Nome: $_name,
  Cognome: $_surname,
  Età: $_age.
  ''';
}
