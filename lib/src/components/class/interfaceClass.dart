/// Interfacce in Dart:
/// Per garantire l'incapsulamento e nascondere i dettagli implementativi di una classe all'utente,
/// si fa uso delle interfacce, permettendo di definire un'insieme di firme da rispettare ed implementare
/// alle classi che decidono di aderire.
///
/// Firma = semplice intestazione del metodo, priva del suo contenuto.
///
/// In Dart, non è possibile definire direttamente delle interfacce.
/// Ogni classe definisce implicitamente un'interfaccia descritta dalle sue firme dei propri metodi.
/// L'implementazione di un'interfaccia avviene tramite la keyword 'implements'.
library;

void interfaceClass() {
  print("lista di volatili: ");
  // il tipo è stato automaticamente come:
  // List<Volatile> volatili
  final volatili = [
    Piccione(),
    Aquila(),
    Gazzaladra(),
  ];

  volatili.forEach((volatili) {
    volatili.verso();
  });
}

class Volatile {
  void volare() => throw UnimplementedError();
  void beccare() => throw UnimplementedError();
  void verso() => throw UnimplementedError();
}

// Implementazione della classe Piccione che aderisce all'interfaccia Volatile.
class Piccione implements Volatile {
  @override
  void volare() => print("STO VOLANDO JACK");
  @override
  void beccare() => print("che bello beccare");
  @override
  void verso() => print("gru gru");
}

// Implementazione della classe Aquila che aderisce all'interfaccia Volatile.
class Aquila implements Volatile {
  @override
  void volare() => print("Sto volando come una vera acquila, sisi!");
  @override
  void beccare() => print("che bello beccare");
  @override
  void verso() => print("GWAAAAAA");
}

// Implementazione della classe Gazzaladra che aderisce all'interfaccia Volatile.
class Gazzaladra implements Volatile {
  @override
  void volare() => print("Sto volando verso la vecchietta con la borsa");
  @override
  void beccare() => print("che bello beccare");
  @override
  void verso() => print("bello sto orolgio");
}
