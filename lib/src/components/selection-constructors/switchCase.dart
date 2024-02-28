void switchCase() {
  var stato = 3;
  var tipo;

  switch (stato) {
    case 1:
      tipo = "Aperto";
      break;
    case 2:
      tipo = "Chiuso";
      break;
    case 3:
      tipo = "Socchiuso";
      break;
    default:
      tipo = "Sconosciuso";
  }

  print("Stato: $tipo");
}
