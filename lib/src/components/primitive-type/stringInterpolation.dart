/// concatenazione string o string interpolation
void stringInterpolation() {
  var a = "Cipettino";
  var b = 10;
  var c = ["Mele", "Banane", "Pere"];

  print("$a ha $b anni");
  print(
      "Ci contiene ${c.length} elementi con l'interpolazione."); // per usare dei metodi, lo metto tra graffe
  print("Ci contiene " +
      c.length.toString() +
      " elementi senza l'interpolazione.");

  print("Stampo dall'indice 2 a 6 ${a.substring(2, 6)}");

  var longString = '''\n
          Pinci
  fa
          tanto
  ridere.
  Vado a capo \n
  Usando lo \\n
  ''';

  print("Scrivo su puù righe: $longString");
}
