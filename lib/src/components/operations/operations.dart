// ignore_for_file: unnecessary_type_check, dead_code

import 'dart:math';

/// var a = 5 + 3; //valutazione
/// var a = 8; //assegnazione
/// 0xFF453C // indirizzo di mem
///
/// Operatori aritmetici:
/// 1 - somma +
/// 2 - sottrazione -
/// 3 - moltiplicazione *
/// 4 - divisone /
/// 5 - divsione intera ~/
/// 6 - modulo %
/// 7 - incremento ++
/// 8 - decremneto --
///
/// Operatori relazionali:
/// 1 - maggiore >
/// 2 - minore <
/// 3 - maggiore uguale >=
/// 4 - minore uguale <=
/// 5 - uguale intera ==
/// 6 - dvierso !=
///
/// Operatori di controllo per dati strutturati:
/// 1 - è di tipo is
/// 2 - non è di tipo is!
///
///  Operatori biwise:
/// 1 - and &
/// 2 - or |
/// 3 - xor ^
/// 4 - complemento ~
/// 5 - shift a sinistra <<
/// 6 - shift a destra >>
///
/// Operatori di assegnazione:
/// 1 - assegnazione =
/// 2 - assegnazione se null ??=
/// 3 - somma e assegna +=
/// 3 - sottrai e assegna -=
/// 3 - moltiplica e assegna *=
/// 3 - dividi e assegna /=
///
/// Operatori logici di concatezione:
/// 1 - And &&
/// 2 - Or ||
/// 3 - Not !
///
/// Espressioni condizionali:
/// 1 - ternario a ? b : c
/// 2 - null coalescing a ?? b
///
/// Espressioni Collezioni:
/// 1 - selezione:
/// if (condizione) ...
/// var items = ["A", "B", "C", if (ok) 'D'];
/// 2 - iterazioni:
/// for (var e in list) ...
/// var items = ["A", "B", "C", for (var e in list) '$e'];
/// 3 - spread:
/// ...
/// var els = ["A", "B"];
/// var els2 = ["C", ...els];
void operatori() {
  print("---------------Operatori Aritmetici---------------");

  var somma = 1 + 2;
  print("Somma: 1 + 2 = $somma");

  var sottrazione = 2 - 1;
  print("Sottrazione: 2 - 1 = $sottrazione");

  var moltiplicazione = 2 * 3;
  print("Moltiplicazione: 2 * 3 = $moltiplicazione");

  var divisione = 4 / 2;
  print("Divisione: 4 / 2 = $divisione");
  var divisioneIntera = 4 ~/ 2;
  print("Divisione intera: 4 ~/ 2 = $divisioneIntera");

  var modulo = 5 % 2;
  print("Modulo: 5 % 2 = $modulo");

  var incremento = 5;
  incremento++;
  print("Incremento: 5++, ora incremento = $incremento");

  var decremento = 5;
  decremento--;
  print("Decremento: 5--, ora decremento = $decremento");

  print("---------------Operatori Relazionali---------------");

  var maggiore = 5 > 3;
  print("Maggiore: 5 > 3 = $maggiore");

  var minore = 3 < 5;
  print("Minore: 3 < 5 = $minore");

  var maggioreUguale = 5 >= 5;
  print("Maggiore uguale: 5 >= 5 = $maggioreUguale");

  var minoreUguale = 5 <= 5;
  print("Minore uguale: 5 <= 5 = $minoreUguale");

  var uguale = 5 == 5;
  print("Uguale: 5 == 5 = $uguale");

  var diverso = 5 != 3;
  print("Diverso: 5 != 3 = $diverso");

  print(
      "---------------Operatori di Controllo per Dati Strutturati---------------");

  var isTipo = "ciao" is String;
  print("È di tipo: 'ciao' is String = $isTipo");

  var nonIsTipo = "ciao" is! int;
  print("Non è di tipo: 'ciao' is! int = $nonIsTipo");

  print("---------------Operatori Bitwise---------------");

  // Bitwise AND: restituisce 1 solo se entrambi i bit sono 1
  var and = 5 & 3;
  print("And: 5 & 3 = $and");

  // Bitwise OR: restituisce 1 se almeno uno dei bit è 1
  var or = 5 | 3;
  print("Or: 5 | 3 = $or");

  // Bitwise XOR: restituisce 1 solo se i bit sono diversi
  var xor = 5 ^ 3;
  print("Xor: 5 ^ 3 = $xor");

  // Bitwise Complement: nega ogni bit, trasforma 0 in 1 e viceversa
  var complemento = ~5;
  print("Complemento Not: ~5 = $complemento");

  // Bitwise Shift a Sinistra: sposta i bit verso sinistra, inserendo 0 a destra
  var shiftSinistra = 5 << 1;
  print("Shift a sinistra: 5 << 1 = $shiftSinistra");

  // Bitwise Shift a Destra: sposta i bit verso destra, inserendo 0 a sinistra
  var shiftDestra = 5 >> 1;
  print("Shift a destra: 5 >> 1 = $shiftDestra");

  print("---------------Operatori di Assegnazione---------------");

  var assegnazione = 5;
  print("Assegnazione: assegnazione = 5, ora assegnazione = $assegnazione");

  var assegnazioneSeNull = null;
  assegnazioneSeNull ??= 5;
  print(
      "Assegnazione se null: assegnazioneSeNull ??= 5, se no lascia il suo valore originale, ora assegnazioneSeNull = $assegnazioneSeNull");

  var sommaEAssegna = 5;
  sommaEAssegna += 5;
  print(
      "Somma e assegna: sommaEAssegna += 5, ora sommaEAssegna = $sommaEAssegna");

  var sottraiEAssegna = 5;
  sottraiEAssegna -= 5;
  print(
      "Sottrai e assegna: sottraiEAssegna -= 5, ora sottraiEAssegna = $sottraiEAssegna");

  var moltiplicaEAssegna = 5;
  moltiplicaEAssegna *= 5;
  print(
      "Moltiplica e assegna: moltiplicaEAssegna *= 5, ora moltiplicaEAssegna = $moltiplicaEAssegna");

  double dividiEAssegna = 5;
  dividiEAssegna /= 5;
  print(
      "Dividi e assegna: dividiEAssegna /= 5, ora dividiEAssegna = $dividiEAssegna");

  print("---------------Operatori Logici di Concatenazione---------------");

  var andLogico = true && false;
  print("And logico: true && false = $andLogico");

  var orLogico = true || false;
  print("Or logico: true || false = $orLogico");

  var notLogico = !true;
  print("Not logico: !true = $notLogico");

  print("---------------Espressioni Condizionali---------------");

  var ternario = true ? 'vero' : 'falso';
  print("Ternario: true ? 'vero' : 'falso' = $ternario");

  var nullCoalescing = null ?? 'default';
  print("Null coalescing: null ?? 'default' = $nullCoalescing");

  print("---------------Espressioni Collezioni---------------");

  var ok = true;

  var items = ["A", "B", "C", if (ok) 'D'];
  print("Selezione: items = ['A', 'B', 'C', if (ok) 'D'], ora items = $items");

  var list = [1, 2, 3];
  var items2 = ["A", "B", "C", for (var e in list) '$e'];
  print(
      "Iterazioni: items2 = ['A', 'B', 'C', for (var e in list) '$e'], ora items2 = $items2");

  var els = ["A", "B"];
  var els2 = ["C", ...els];
  print("Spread: els2 = ['C', ...els], ora els2 = $els2");
}
