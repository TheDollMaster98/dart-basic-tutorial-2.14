/// Classi invocabili in Dart:
/// sono classi che possono essere utilizzate come funzioni,
/// cioè possono essere chiamate come se fossero delle funzioni.
/// (patter commander in ingegneria del software)
/// Per rendere una classe invocabile, è necessario implementare il metodo `call`.
///
/// Caratteristiche principali:
/// - Il metodo `call` consente di chiamare un'istanza della classe come se fosse una funzione.
/// - L'utilizzo di classi invocabili fornisce un modo di definire oggetti che possono essere trattati
///   come funzioni, consentendo una maggiore flessibilità nella progettazione del codice.
/// - La classe invocabile può avere anche altri membri, come campi e altri metodi.
/// - L'utilizzo principale è quello di creare oggetti che hanno un comportamento invocabile,
///   fornendo un'interfaccia funzionale.
///
void classiInvocabili() {
  final prezzo = 250.0;
  final calcolatoreIVA = CalcoloIVA();

  print("Calcolo IVA di $prezzo€ = ${calcolatoreIVA(prezzo)}"); //  Output: 55.0
}

class CalcoloIVA {
  final int iva;

  CalcoloIVA([this.iva = 22]); // costruttore con parametro opzionale

  double call(double value) => value / 100 * iva;
}
