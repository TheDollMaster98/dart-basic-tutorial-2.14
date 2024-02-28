void nullSafety() {
  /**
   * attiva di deafult in dart 2.14+.
   * tutte le var dichiarate sono nullable.
   * grande al null safety ho 4 possibilità di dichiarare i tipi numerici:
   * 1 - interi nullable
   * 2 - doppia precisione nullable
   * 3 - interi non-nullable
   * 4 - doppia precisione non-nullable
   * 
   * Devo definire a priori se sia nullable o no, mettendo ?
   */

  var a; //tipo dynamic
  print("Valore di a: $a"); //stamperà null

  String? b; //null-safety
  print("Valore di b: $b"); //stamperà null

  List<String> names = ["Pippo", "Pluto", "Cip"];

  String? pinci;
  pinci = "Pinci";
  //non posso mettere però il ! per ignorare undefined o null, se no si rompe "Null check operator used on a null value"
  names.add(pinci);

  print("Aggiunto un valore nullable $pinci a $names");
}
