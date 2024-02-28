void type() {
  var pippo = "Pippo"; //string
  var a = 5; //int

  print(pippo);
  print(a);

/**
 *  Dynamic:
 * posso dichiare una var anche senza assegnarne un valore immediatamente:
 */
  var pinci; //qui il tipo è dynamic.
  pinci = "Pinci"; // il tipo dynamic diventa string.
  print(pinci);

  //determinazione del tipo:
  String ciao = "ciao";
  int b = 5;
  double c = 3.5;
  print(ciao);
  print(b);
  print(c);

  //Boolean:
  bool boolean = true;
  print(boolean);

  // Conversioni:
  var x = 0XFAFA; //numero in esadecimale convertito = 64259
  var y = 1.5e5; //numero esponenziale 1.5*10^5 convertito = 150000.0
  print(x);
  print(y);

  //Interpolazione stringhe:
  var string1 = "ciao";
  //devo sempre convertire in una stringa il valore
  print("Interpolazione stringa: " + string1.toString());
}
