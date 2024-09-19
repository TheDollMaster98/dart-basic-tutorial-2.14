/**
 * Programmazione Asincrona: Futures e Streams
 * 
 * - "async": Indica che una funzione è asincrona e restituisce una Future.
 * - "await": Attende il completamento di una Future prima di continuare.
 * - "Stream": Flusso di dati che trasmette valori in modo asincrono.
 *   Invece di restituire un singolo valore come una Future, uno Stream può
 *   emettere più valori nel tempo.
 * 
 * Generatori:
 * - "sync*": Generatore sincrono che restituisce un Iterable.
 * - "async*": Generatore asincrono che restituisce uno Stream.
 *   Gli Stream sono utili per sequenze di valori asincroni, come la lettura
 *   di dati da una sorgente esterna.
 * 
 * Iterable:
 * - Un oggetto che può essere iterato (es. con un ciclo for-in) e produce
 *   una sequenza di valori. Utile quando tutti i valori sono disponibili
 *   immediatamente.
 */
void stream() async {
  // Utilizziamo 'await for' per iterare attraverso gli elementi emessi dallo Stream.
  // 'await for' attende che ogni elemento sia disponibile prima di proseguire.
  await for (final number in fib(10)) {
    print("Numero Fibonacci dallo Stream: $number");
  }
}

// Funzione asincrona che genera una sequenza di numeri di Fibonacci come uno Stream<int>.
Stream<int> fib(int n) async* {
  // Funzione privata ricorsiva per calcolare il numero di Fibonacci.
  int _fib(int n) => n <= 2 ? 1 : _fib(n - 2) + _fib(n - 1);

  // Emissione del valore corrente della sequenza di Fibonacci nello Stream.
  yield _fib(n);

  // Se il valore di n è maggiore di 2, continuiamo a emettere i valori della sequenza.
  if (n > 2) {
    // 'yield*' viene utilizzato per trasmettere tutti i valori emessi da un altro Stream.
    // In questo caso, continuiamo la sequenza Fibonacci in modo ricorsivo.
    yield* fib(n - 1);
  }
}

// Funzione sincrona che genera un Iterable<int> della sequenza di Fibonacci.
Iterable<int> fib2(int n) sync* {
  // Funzione privata ricorsiva per calcolare il numero di Fibonacci.
  int _fib2(int n) => n <= 2 ? 1 : _fib2(n - 2) + _fib2(n - 1);

  // Emissione del valore corrente della sequenza di Fibonacci nell'Iterable.
  yield _fib2(n);

  // Se n è maggiore di 2, continuiamo a emettere i valori della sequenza.
  if (n > 2) {
    // 'yield*' qui emette i valori dell'iterable risultante da una chiamata ricorsiva.
    yield* fib2(n - 1);
  }
}

/**
 * Differenze tra Stream e Iterable:
 * 
 * - Uno Stream produce valori in modo asincrono (ad esempio, da una sorgente esterna 
 *   come un file o una connessione di rete) e richiede che attendiamo ciascun valore.
 * - Un Iterable, invece, è sincrono e produce immediatamente tutti i valori disponibili.
 * 
 * Utilizzo di 'async*' e 'sync*':
 * - 'async*' consente di utilizzare generatori asincroni con valori che possono essere 
 *   disponibili in modo differito o intermittente (es. dallo Stream).
 * - 'sync*' è usato per produrre sequenze di valori in modo sincrono, ad esempio quando
 *   i valori sono immediatamente disponibili.
 */
