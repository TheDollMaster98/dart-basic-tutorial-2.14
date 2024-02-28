typedef funcMaggiorenne = bool Function(int);

void anonymousFunc() {
  // Dichiarazione e assegnazione di una funzione anonima a funcMaggiorenneScope
  final funcMaggiorenne funcMaggiorenneScope = (int eta) => eta >= 18;

  // Chiamata alla funzione printMagg passando la funzione anonima funcMaggiorenneScope
  printMagg(funcMaggiorenneScope);
}

void printMagg(bool Function(int) isMaggiorenne, {int eta = 18}) {
  // Stampa "Maggiorenne" se isMaggiorenne(eta) restituisce true, altrimenti stampa "Minorenne"
  print(isMaggiorenne(eta) ? "Maggiorenne" : "Minorenne");
}
