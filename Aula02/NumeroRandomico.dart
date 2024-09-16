import 'dart:math';

void main() {
  var numero = Random().nextInt(11);
  switch (numero) {
    case (<= 5):
      print("Aluno reprovado com nota $numero");
      break;
    case (> 5) && (< 8):
      print("Aluno aprovado com nota $numero");
      break;
    case (>= 8):
      print("Aluno aprovado com louvor. Nota $numero");
      break;
  }
}
