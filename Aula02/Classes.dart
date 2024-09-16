void main() {
  Heroi saitama = new Heroi("One Punch Man", "Super Força", 25);
  print(saitama.CaracteristicaDoHeroi());
  saitama.AlterarNome("Saitama");
  print(saitama.CaracteristicaDoHeroi());
  saitama.CaracteristicasDoHeiroi2();
}

class Heroi {
  //Atributos
  String? nome;
  String? poder;
  int? idade;

  //Construtor
  Heroi(this.nome, this.poder, this.idade);

  /*Heroi(String nome, String poder, int idade) {
    this.nome = nome;
    this.poder = poder;
    this.idade = idade;
  }*/

  //Métodos
  String CaracteristicaDoHeroi() {
    return "Nome: $nome Poder: $poder, Idade: $idade";
  }

  void CaracteristicasDoHeiroi2() {
    print("SOBRE O HEROI");
    print("Nome: $nome");
    print("Poder: $poder");
    print("Idade: $idade");
  }

  void AlterarNome(String novoNome) {
    nome = novoNome;
  }
}
