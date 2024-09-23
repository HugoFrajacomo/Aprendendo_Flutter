import 'dart:ffi';
import 'dart:io';

void main() {
  stdout.write("Digite o nome do Carro: ");
  String? nome = stdin.readLineSync();
  stdout.write("Qual a cor do carro?: ");
  String? cor = stdin.readLineSync();
  stdout.write("Qual a velocidade máxima do carro?: ");
  int? velocidadeMaxima = int.parse(stdin.readLineSync()!);
  stdout.write("Qual a velocidade atual do carro?: ");
  int? velocidadeAtual = int.parse(stdin.readLineSync()!);
  stdout.write("Quanto tempo o carro vai acelerar?: ");
  int tempo = int.parse(stdin.readLineSync()!);
  stdout.write("Por quanto tempo ele vai freiar?: ");
  int tempo2 = int.parse(stdin.readLineSync()!);

  Carro carro =
      Carro(nome, cor, velocidadeMaxima, velocidadeAtual, tempo, tempo2);
  carro.acelerar();
  carro.frear();
}

class Carro {
  String? nome;
  String? cor;
  int? velucidadeMaxima;
  int? velocidadeAtual;
  int tempo;
  int tempo2;

  Carro(this.nome, this.cor, this.velucidadeMaxima, this.velocidadeAtual,
      this.tempo, this.tempo2);

  void acelerar() {
    for (int i = 0; i < tempo; i++) {
      if (velocidadeAtual! >= velucidadeMaxima!) {
        break;
      }
      velocidadeAtual = velocidadeAtual! + 1;
      stdout.write(
          "Para tempo de aceleração $i a velocidade atual é $velocidadeAtual\n");
    }
  }

  void frear() {
    for (int i = 0; i < tempo2; i++) {
      stdout.write(
          "Para tempo de frenagem $i a velocidade atual é $velocidadeAtual\n");
      if (velocidadeAtual! <= 0) {
        stdout.write(
            "O carro parou de frear, a velocidade atual é $velocidadeAtual\n");
        break;
      }
      velocidadeAtual = velocidadeAtual! - 2;
    }
  }
}
