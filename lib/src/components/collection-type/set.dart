/// collezione omogena di oggetti, che però non sono ordinati in uno specifico criterio.
/// a differenza delle liste, non avendo degli indici non posso accedervi in base alla posizione,
/// ma posso vedere se un elmeneto ne è presente
void set() {
  Set mySet = {"pinci", "cip", 10, true};
  print("Il mio primo set: $mySet");

  mySet.add(10.5);
  print("Posso usare add nei set: $mySet");

  mySet.contains(10);
  print("Posso vedere se 10 è nel mio set: $mySet");

  mySet.contains(30);
  print("Posso vedere se 30 è nel mio set: $mySet");

  mySet.remove(10);
  print("Posso rimuovere un elemento specifico, nel mio caso 10: $mySet");

  Set<String> mySet2 = {"pinci", "cip"};
  print("set tipizzato $mySet2");
}
