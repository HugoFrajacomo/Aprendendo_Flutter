void main() {
  Hero saitama = Hero("Saitama", "One Punch");
  print(saitama.sayName());

  UltimateHero saitama2 = UltimateHero("Saitama", "One Punch");
  print(saitama2.sayName());
}

class Hero {
  String? nome;
  String? sobrenome;
  String? primeiroNome2;
  String? segundoNome2;

  //construtor
  Hero(this.nome, this.sobrenome);
  String sayName() {
    return "Nome: $primeiroNome2 $segundoNome2";
  }
}

class UltimateHero implements Hero {
  @override
  String? nome;
  @override
  String? sobrenome;
  @deprecated //indica que o método está obsoleto
  String? primeiroNome2;
  @deprecated
  String? segundoNome2;

  UltimateHero(this.nome, this.sobrenome);

  @override
  String sayName() {
    return "Nome: $nome $sobrenome";
  }
}

/* o dart da o conceito de metadados imbutidos no código, geralmente isso se chama anotação em outras linguágens, no dart é chamado de metadados.O dart fornece duas anotações: @override usada para indicar que uma classe está sobrescrevendo um método da classe pai e @deprecated usada para indicar que um método ou classe está obsoleto e não deve ser usado.
Também existe a anotação @required que é usada para indicar que um parâmetro de um construtor é obrigatório.
*/