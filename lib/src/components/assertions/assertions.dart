/**
 * Le asserzioni (assertions) sono dichiarazioni che esprimono condizioni 
 * che dovrebbero essere vere in un determinato punto del codice durante lo sviluppo dell'applicazione. 
 * Sono utilizzate principalmente per scopi di debugging e testing.
 */

// Funzione che utilizza un assert per verificare che l'età sia maggiore o uguale a 18.
void assertionsTrue() {
  var eta = 20;
// L'assertion verifica che l'età sia maggiore o uguale a 18.
  assert(eta >= 18);

  print("Hai accesso a questa funzionalità");
}

// Funzione che utilizza un assert per verificare che l'età sia maggiore o uguale a 18.
void assertionsFalse() {
  var eta = 10;

  assert(
      eta >= 18); // L'assertion verifica che l'età sia maggiore o uguale a 18.

  print("Non hai accesso a questa funzionalità");
}
