void cascateNotation() {
  // Creazione di una lista di stringhe
  final list = ["Pippo", "Pluto", "Pinci", "Cip"];

  // Aggiunta di un elemento alla lista utilizzando la funzione addItem
  addItem("Giulio", list: list);

  // Stampa della lista dopo l'applicazione delle cascate notation
  print("Cascate Notation: $list");
}

// Funzione che aggiunge un elemento alla lista e rimuove il primo elemento
// Utilizza le cascate notation per eseguire più operazioni sulla lista
List<String> addItem(String item, {required List<String> list}) => list
  ..add(item) // Aggiunta dell'elemento alla lista
  ..removeAt(0);      // Rimozione del primo elemento dalla lista
