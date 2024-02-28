/// La parola chiave 'static' in Dart viene utilizzata per definire membri (campi o metodi) di una classe
/// che appartengono alla classe stessa, invece che alle istanze della classe.
///
/// Caratteristiche principali:
/// - I membri statici sono condivisi tra tutte le istanze della classe e possono essere acceduti senza creare un'istanza della classe.
/// - Possono essere chiamati utilizzando il nome della classe seguito da un punto e il nome del membro statico.
/// - Non hanno accesso ai membri non statici della classe, poiché non fanno parte di un'istanza specifica.
/// - Possono essere campi (variabili) o metodi statici.
/// - Vengono inizializzati (allocato in memoria) solo una volta, quando la classe viene caricata.
/// - Non possono accedere ai membri di istanza (non statici) direttamente.
///
/// Utilizzi comuni:
/// - Contare il numero totale di istanze create di una classe.
/// - Condividere dati o comportamenti che sono comuni a tutte le istanze della classe.
/// - Creare metodi di utilità che non dipendono dallo stato di un'istanza specifica.
///
void staticsClass() {
  final persona1 = PersonaStaticClass("Classe", "Statica", 5);
  final persona2 = PersonaStaticClass("Metodo", "Statica", 7);
  final diffEta = PersonaStaticClass.diffEta(persona1._age, persona2._age);
  print(persona1);

  /**
   * per accedere alla var static devo farlo chiamandolo dalla classe
   */

  print("PIL : $PersonaStaticClass.PIL");
  print("DIff età : $diffEta");
}

class PersonaStaticClass {
  String _name;
  String _surname;
  int _age;
  String? _gender; // Parametro opzionale
  static const PIL = 5000; //Parametro statico

  PersonaStaticClass(this._name, this._surname, this._age,
      [this._gender = "N/D"]);
  PersonaStaticClass.Boy(this._name, this._surname, this._age) : _gender = "M";
  PersonaStaticClass.Girl(this._name, this._surname, this._age) : _gender = "F";

  void walk() => print("Sto camminando");
  void saluta() => print("Ciao!");

  String get name => _name;
  set name(String name) => _name = name;

  //per aggiungere un metodo static:
  static int diffEta(int age1, int age2) => (age1 - age2).abs();

  @override
  String toString() => '''\n
  Nome: $_name,
  Cognome: $_surname,
  Età: $_age,
  Genere: $_gender
  ''';
}
