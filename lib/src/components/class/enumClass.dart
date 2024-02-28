/**
 * Enum:
 * sono delle classi speciale che rappresentato
 * un numero finito di elementi costanti.
 * 
 * Essendo delle costanti non possono essere istanziate
 * ne ereditati ne come mixin, ne come interfacce 
 * ma solo utilizzate per accedere a uno dei valori.
 */

void enumClass() {
  final persona1 = PersonaEnum.Boy("Pinci", "Limpi Dù", 10);
  print(persona1);

  print("Enum intero: ${Genre.values}");
}

enum Genre { M, F, ND }

class PersonaEnum {
  String _name;
  String _surname;
  int _age;
  Genre? _gender; //enum

  PersonaEnum(this._name, this._surname, this._age, [this._gender = Genre.ND]);
  PersonaEnum.Boy(this._name, this._surname, this._age) : _gender = Genre.M;
  PersonaEnum.Girl(this._name, this._surname, this._age) : _gender = Genre.F;

  void walk() => print("Sto camminando");
  void saluta() => print("Ciao!");

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
