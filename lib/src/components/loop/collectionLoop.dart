void collectionLoop() {
  final list = ["Pippo", "Pinci", "Cip"];

  for (final name in list) {
    print("loop nella lista $name");
  }

  list.forEach((name) {
    print("forEach: loop nella lista $name");
  });
}
