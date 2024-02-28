/// Classi astratte:
/// Una classe astratta è una classe che non può essere istanziata direttamente.
/// Può contenere metodi senza implementazione (metodi astratti).
/// Le classi astratte forniscono una struttura comune da cui altre classi possono ereditare.
void abstractClass() {
  print("Classi astratte: ");

  // Creazione di istanze di Gatto e Cane
  final cip = Gatto(4, 80, 5, "Europeo");
  final pinci = Cane(4, 50, 5, "Pinci");

  // Chiamata ai metodi specifici di Gatto e Cane
  cip.verso();
  pinci.verso();

  print("Collezione di animali: ");

  // Creazione di una collezione di animali con diverse razze
  final animali = [
    Gatto(4, 70, 7, "Europeo"),
    Cane(4, 20, 6, "Volpino"),
    Gatto(4, 90, 8, "Siamese")
  ];

  // Chiamata al metodo verso di tutti gli animali nella collezione
  animali.forEach((animale) {
    animale.verso();
  });
}

abstract class Animale {
  final int arti;
  final int altezza;
  final double peso;

  Animale(this.arti, this.altezza, this.peso);

  /// Metodi astratti che devono essere implementati dalle classi figlie.
  /// I metodi avranno a disposizione solo le firme
  /// non avranno un corpo.
  /// visto che ogni animale haun comportamente specifico
  void muoviti();
  void verso();

  // Metodi con implementazione predefinita
  void mangia() => print("Mangio");
  void dormi() => print("Ronf Ronf");
}

class Gatto extends Animale {
  final String razza;

  Gatto(int arti, int altezza, double peso, this.razza)
      : super(arti, altezza, peso);

  @override
  void muoviti() => print("Mi sto muovendo come un gatto!");

  @override
  void verso() => print("Nyan");
}

class Cane extends Animale {
  final String razza;

  Cane(int arti, int altezza, double peso, this.razza)
      : super(arti, altezza, peso);

  @override
  void muoviti() => print("Mi sto muovendo come un cane!");

  @override
  void verso() => print("Bau");
}
