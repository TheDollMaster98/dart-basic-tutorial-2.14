/**
 * Errori ed eccezioni in Dart:
 * - I metodi non dichiarano le eccezioni che rilanciano.
 * - Non è necessario catturare esplicitamente le eccezioni.
 * - Non è necessario specificare il tipo di eccezione da catturare.
 * - Eccezioni propagate secondo il binding dinamico.
 */

void eccezioniClass() {
  final eta = 18;
  print("Età: $eta anni.");
  servizioAlcolici(eta);

  // Gestisco le eccezioni:
  final eta1 = 15;
  print("Età: $eta1 anni.");
  try {
    servizioAlcolici(eta1);
  } on EtaNonValidaException catch (e) {
    print("Eccezione: $e");
    // Possibile rethrow per rilanciare l'eccezione.
    // rethrow;
    // Il secondo parametro del catch corrisponde allo stack trace, dove troveremo il flusso di esecuzione del codice.
  } on UnsupportedError catch (e, s) {
    print("Errore generico: $e");
    print("Stack trace: $s");
    // La clausola catch può gestire più tipi di eccezioni.
    // Il blocco catch per UnsupportedError cattura eccezioni di tipo UnsupportedError.
    // Il blocco catch successivo gestirà eventuali altre eccezioni.
  } finally {
    print("Il cliente è tornato a casa.");
    // Il blocco finally contiene il codice che viene eseguito sempre, indipendentemente dalla presenza di eccezioni.
  }
}

bool isMaggiorenne(int eta) => eta >= 18;

void servizioAlcolici(int eta) {
  // Per simulare un errore generico:
  // throw UnsupportedError("");
  final maggiorenne = isMaggiorenne(eta);

  if (!maggiorenne) {
    throw EtaNonValidaException("Cliente non maggiorenne!");
  }

  return print("Alcolico servito.");
}

/**
 * Per implementare le eccezioni, si crea una classe.
 * La classe EtaNonValidaException estende Exception, il che la rende un tipo di eccezione personalizzato.
 */

class EtaNonValidaException implements Exception {
  final String error;

  EtaNonValidaException(this.error);

  @override
  String toString() => error;
}
