void forLoop() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    } else if (i > 3) {
      break;
    }
    print("ciao nel for loop ${i + 1}");
  }
}
