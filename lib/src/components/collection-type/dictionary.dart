// uso typedef per definire degli alias se ho più tipi, o tipi innestati:
typedef mapStringInt = Map<String, int>;

/// Mappe chiave - valore.
void dictionary() {
  var dictionary = {"name": "Pinci", "age": 10, 10: "Voto!"};

  print("Il mio primo dzionario: $dictionary");

  print("Stampami il valore nella chiave name: ${dictionary["name"]}");
  print(
      "Stampami il valore nella chiave ciao non presente nel dizionario: ${dictionary["ciao"]}");

  dictionary["velocità"] = 10;
  print("Per aggiungere una nuova chiave - valore al dizionario: $dictionary");

  dictionary.remove(10);
  print(
      "Per Rimuovere una valore dal dizionario (rimosso 10: \"Voto!)\": $dictionary");

  print("Quanti elementi possiede il mio dizionario? ${dictionary.length}");

  //problema di più tipi in una mappa:
  mapStringInt dictionary2 = {
    "Pinci": 10,
    "Cip": 33,
    "pippo": 77,
  };

  print(dictionary2);
}
