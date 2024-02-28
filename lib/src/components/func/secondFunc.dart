void secondFunc() {
  final eta = 17;
  final num1 = 2;
  var num2;

  printMagg2(isMaggiorenne2, eta); // Verifica se l'età è maggiore o uguale a 18
  printBark(
      isCatOrDog, num1); // Stampa "Meow" o "Bark" in base alla parità di num1
  printBark(
      isCatOrDog, num2); // Stampa "Meow" o "Bark" in base alla parità di num2
  pioggia(num: eta); // Verifica se piove in base al valore di eta
}

// Funzione che verifica se l'età è maggiore o uguale a 18
bool isMaggiorenne2(int eta) => eta >= 18;

// Funzione di stampa che utilizza una funzione di controllo per decidere cosa stampare
// L'età è un parametro opzionale che, se non viene popolato, diventa 18
void printMagg2(bool Function(int) func, [int eta = 18]) {
  // Stampa "Maggiorenne" se func(eta) restituisce true, altrimenti stampa "Minorenne"
  print(func(eta) ? "Maggiorenne" : "Minorenne");
}

// Funzione che restituisce 0 se il numero è pari (gatto) e 1 se è dispari (cane)
int isCatOrDog(int num) => num % 2 == 0 ? 0 : 1;

// Funzione di stampa che utilizza una funzione di controllo per decidere cosa stampare
// Il parametro num è opzionale e, se non è popolato, assume il valore di default 5
void printBark(int Function(int) func, [int? num]) {
  // Stampa "Meow" se func(num) restituisce 0, altrimenti stampa "Bark"
  print(func(num ?? 5) == 0 ? "Meow" : "Bark");
}

// Funzione che verifica se sta piovendo in base al valore di num
// Il parametro num è opzionale e, se non è popolato, assume il valore di default 7
void pioggia({int num = 7}) {
  // Stampa "Si piove" se num è maggiore di 5, altrimenti stampa "Non piove"
  num > 5 ? print("Si piove") : print("Non piove");
}

/**
  1- Parentesi quadre [] (Parametri Opzionali Posizionali):
  Quando usi parentesi quadre, stai dichiarando parametri opzionali posizionali.
  I parametri opzionali posizionali non richiedono nomi specifici durante la chiamata della funzione, ma devono essere forniti nella stessa sequenza in cui sono dichiarati.
  Il parametro num è opzionale e può essere omesso durante la chiamata della funzione. Se fornito, deve seguire immediatamente il parametro func.

  2 - Parentesi graffe {} (Parametri Opzionali Nominati):
  Quando usi le parentesi graffe, stai dichiarando parametri opzionali nominati.
  I parametri opzionali nominati possono essere forniti in qualsiasi ordine durante la chiamata della funzione, e il nome del parametro viene specificato.
  sIl parametro num è opzionale e può essere fornito durante la chiamata della funzione come pioggia(num: valore). L'uso delle parentesi graffe e il nome del parametro rendono il codice più leggibile e flessibile.
*/