void main() {
  //trata direto com a classe Hero
  Hero saitama = Hero("Saitama", "One Punch");
  print(saitama.sayName());

  //trata direto com a classe UltimateHero que herda hero
  UltimateHero saitama2 = UltimateHero("Saitama", "One Punch");
  print(saitama2.sayName());
  print(saitama.nome);
}

class Hero {
  String? nome;
  String? sobrenome;
  String? primeiroNome2;
  String? segundoNome2;

  Hero(this.nome, this.sobrenome);
  Hero.build(this.primeiroNome2, this.segundoNome2);

  String sayName2() {
    return "Nome: $primeiroNome2 $segundoNome2";
  }

  String sayName() {
    return "Nome: $nome $sobrenome";
  }
}

class UltimateHero extends Hero {
  UltimateHero(String? nome, String? sobrenome) : super(nome, sobrenome);

  @override //sobreescreve o método da classe pai
  String sayName() {
    return "Nome: $nome $sobrenome";
  }
}

//extends - herda a funcionalidades (métodos e propriedades) da classe pai. Pode usar ou sobreescrever os métodos e propriedades da classe pai.

//Herda as características da classe pai, menos os construtores.

//Como os construtores não são herdados então precisamos fornecer um construtor para a classe filha. Esses construtores são chamados de construtores nomeados. (super.build)
