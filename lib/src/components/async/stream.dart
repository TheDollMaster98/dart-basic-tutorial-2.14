/**
 * Programmazione Asincrona: Futures e Streams
 * 
 * - "async": Dichiarazione di funzioni asincrone.
 * - "await": Attesa del risultato di una Future, implica l'attesa del suo completamento.
 * - "Stream": Flusso di valori trasmessi in modo asincrono.
 * 
 * Generatori:
 * - "sync*": Generatore sincrono che restituisce un iterable.
 * - "async*": Generatore asincrono che restituisce uno Stream.
 * 
 * Iterable:
 * - Un oggetto che può essere iterato, producendo una sequenza di valori.
 */
void stream() async {
  // Utilizzo di 'await for' per iterare attraverso gli elementi dello Stream.
  await for (final number in fib(10)) {
    print("Numero fib: $number");
  }
}

// Funzione asincrona che restituisce uno Stream<int>.
Stream<int> fib(int n) async* {
  // Funzione ricorsiva per calcolare il numero di Fibonacci.
  int _fib(int n) => n <= 2 ? 1 : _fib(n - 2) + _fib(n - 1);

  // Emissione del valore nel flusso.
  yield _fib(n);

  // Condizione di terminazione per evitare l'overflow.
  if (n > 2) {
    // Utilizzo di 'yield*' per emettere i valori dello Stream di una chiamata ricorsiva.
    yield* fib(n - 1);
  }
}

// Funzione sincrona che restituisce un Iterable<int>.
Iterable<int> fib2(int n) sync* {
  int _fib2(int n) => n <= 2 ? 1 : _fib2(n - 2) + _fib2(n - 1);

  // Emissione del valore nell'iterable.
  yield _fib2(n);

  // Condizione di terminazione per non andare in overflow.
  if (n > 2) {
    // Utilizzo di 'yield*' per emettere i valori dell'iterable di una chiamata ricorsiva.
    yield* fib2(n - 1);
  }
}
