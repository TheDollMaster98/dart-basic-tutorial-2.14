void list() {
  // sono gli array
  List list = [];
  print(list);

  List<String> newList = ["pinci", "cip", "pippo"];
  print(newList);
  print("Stampa il valore della cella n2: " + newList[1].toString());

  var listNewListNum = [1, 2, 3, 8, 9, 11, 5];
  print(listNewListNum);
  //aggiungo alla fine della lista:
  listNewListNum.add(6);
  print("Aggiungo alla fine della lista il valore 6: " +
      listNewListNum.toString());
  //rimuovo il valore 3
  listNewListNum.remove(3);
  print("Rimosso il valore numero 3: " + listNewListNum.toString());
  //rimuovo il valore nell'indice 2
  listNewListNum.removeAt(2);
  print("Rimosso il valore nell'indice 2: " + listNewListNum.toString());
}
