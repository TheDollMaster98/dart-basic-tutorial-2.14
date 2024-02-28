/// ogni app scritta in Dart è una libreria, attraverso import e library
/// possiamo costruire moduli da condividere, caricabile su github e pub.dev.
///
/// alcune librerie possono avere lo stesso nome
/// usando un prefisso alal libreria importanta saranno referenziati.
///
/// - con "import" importo una libreria.
/// - con "as" assoccio il prefisso ad una libreria.
/// - con "show" posso importare alcuni elementi di una libreria
/// in modo da non importarla tutta ed appesantire il codice
/// - con "hide" nascondo alcune implementazioni.
///
/// In Dart posso spezzare il contenuto di un singolo file, in file più piccoli.
/// Usando part e part of:
///
/// fileA.dart
/// part of "file.dart";
///
/// fileB.dart
/// part of "file.dart";
///
/// file.dart
/// part "fileA.dart";
/// part "fileB.dart";
library;

// importo la libreria math di dart
import "dart:math" as math;
// importo solo il pi gredo da dart:marth
import "dart:math" show e;

void firstLibrary() {
  // da priorità a questo pi, e non a quello della libreria dart:math
  final pi = 500;
  print("Importo la variabile p gredo: $pi");
  // Così facendo stampo il pi gredo della libreria dart:math
  print("Importo il p gredo usando as: ${math.pi}");
  print("Importo il num di nepero (e) usando show: $e");
}
