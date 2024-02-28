void ifElse() {
  final eta = 20;
  String? tipo;

  if (eta < 10) {
    tipo = "Bambino";
  } else if (eta > 10 && eta < 18) {
    tipo = "Adolescente";
  } else if (eta > 18 && eta < 60) {
    tipo = "Adulto";
  } else {
    tipo = "Anziano";
  }

  print("All1\'età di $eta anni, sei un $tipo");
}
