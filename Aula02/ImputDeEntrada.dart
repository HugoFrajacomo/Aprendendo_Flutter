//Para testar digite no terminal o comando dart run ImputDeEntrada.dart

import 'dart:io'; //importa a biblioteca de entrada e saída

void main() {
  stdout.write("Digite o nome do herói: ");
  String? nome = stdin.readLineSync();
  stdout.write("Digite o poder do herói: ");
  String? poder = stdin.readLineSync();
  stdout.write("Digite a idade do herói: ");
  int? idade = int.parse(stdin.readLineSync()!);

  print("Nome: $nome Poder: $poder, Idade: $idade");

  //Entreda de boleano
  stdout.write("Está chovendo? 1 - Sim, 0 - Não: ");
  bool? chovendo = bool.fromEnvironment(stdin.readLineSync()!);
  print(chovendo ? "Está chovendo" : "Não está chovendo"); //utilizando ternário
}
