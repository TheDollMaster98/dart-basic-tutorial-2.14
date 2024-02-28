/// - `late` viene utilizzato per variabili il cui valore può essere assegnato in un secondo momento.
/// - `final` è utilizzato per variabili il cui valore è assegnato una sola volta e non cambierà.
/// - `const` viene utilizzato per dichiarare costanti con valori noti a tempo di compilazione.
///
/// - `final`:
///   1) Da usare quando il valore di una variabile sarà assegnato solo una volta e non cambierà.
///   2) Utile per garantire l'immutabilità di una variabile.
///   3) Prestazionalmente efficiente perché il compilatore può ottimizzare in base a questa informazione.
///
/// - `late`:
///   1) Da usare quando devi inizializzare una variabile in un secondo momento, ma vuoi evitare l'inizializzazione anticipata.
///   2) Utile in situazioni in cui la variabile potrebbe non essere inizializzata durante la dichiarazione, ma solo quando è effettivamente necessaria.
///   3) Attenzione: se non viene inizializzata prima dell'uso, può causare errori a runtime.
///
/// - `const`:
///   1) Da usare quando il valore di una variabile è noto a tempo di compilazione e non cambierà mai.
///   2) Utile per dichiarare costanti numeriche, stringhe o booleane.
///   3) Può portare a ottimizzazioni a livello di compilazione.
library;

// Non è allocato da nessuna parte, l'inizializzazione verrà fatta successivamente.

void late() {
  /**
   * Favorisco l'inizializzazione "lazy" (pigra) della variabile usando `late`,
   * consentendo di allocare memoria solo quando avrò bisogno del valore.
   * In questo caso, la variabile 'name' viene inizializzata nel metodo 'late'.
   */
  late String name;
  name = "Pinci"; // Inizializzo la variabile qui e la alloco.
  print("Valore late $name"); // Stampa "Pinci"
}

void finale() {
  /**
   * Con `final`, la variabile non muterà nel tempo e non posso riassegnarla una seconda volta.
   * Questo impatta sulle prestazioni poiché il compilatore saprà a priori che la variabile,
   * una volta assegnata, non potrà essere ridefinita.
   */
  final name1 = "Pinci"; // Inizializzo la variabile qui.
  final String name2 = "Cip";
  print(
      "Valore final $name1. Valore final con tipo $name2"); // Stampa "Valore final Pinci. Valore final con tipo Cip"
}

void costante() {
  /**
   * Le variabili dichiarate con `const` sono simili a `final`,
   * ma il loro valore deve essere noto a tempo di compilazione e
   * non andranno a finire in memoria quando tradotte in codice macchina.
   */
  const a = 5;
  print(
      "Costante $a, non andrà a finire in memoria."); // Stampa "Costante 5, non andrà a finire in memoria."
}
