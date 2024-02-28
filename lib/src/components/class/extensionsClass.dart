/// Le Extensions in Dart sono una funzionalità
/// che consente di aggiungere nuovi metodi o getter/setter
/// a una classe esistente senza dover sottoporre la classe a modifiche dirette.
/// Le extensions offrono un modo di estendere il comportamento di una classe
/// senza ereditarla o modificarne direttamente il codice.
library;

void extensionsClass() {
  final word1 = "anna";
  final word2 = "ciao";
  // final word3 = "I topi non avevano nipoti";

  print(word1.palindroma
      ? "\"$word1\" è una parola palindroma"
      : "\"$word1\" non è una parola palindroma");

  print(word2.palindroma
      ? "\"$word2\" è una parola palindroma"
      : "\"$word2\" non è una parola palindroma");
}

/// Ho aggiunto la funzione al dominio delle funzioni delle stringhe
/// incapsulandola mediante l'uso delle extensions.
extension ExtensionPalindroma on String {
  // Ho trasformato la funzione in un getter perché
  bool get palindroma {
    // Ho usato ~ per ottimizzare la divisione intera per 2
    for (int i = 0; i < length ~/ 2; i++) {
      if (this[i] != this[length - i - 1]) {
        return false;
      }
    }

    return true;
  }
}
