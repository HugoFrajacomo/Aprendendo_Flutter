enum doces { chocolate, morango, limao, maracuja }

void main() {
  print(doces.values); // Imprime todos os valores do Enum
  print(doces.chocolate); // Imprime o valor do Enum
  print(doces.values[2]); // Imprime o valor do Enum

  print("Utilizando switch case");
  doces doce = doces.morango;
  switch (doce) {
    case doces.chocolate:
      print('Escolheu Chocolate');
      break;
    case doces.morango:
      print('Escolheu Morango');
      break;
    case doces.limao:
      print('Escolheu Limão');
      break;
    case doces.maracuja:
      print('Escolheu Maracujá');
      break;
  }

  //Verifica se o valor é igual ao index
  assert(doces.chocolate.index == 0);
  assert(doces.morango.index == 1);
  assert(doces.limao.index == 2);
  assert(doces.maracuja.index == 3);

  print(doces.values[2]);

  //palavras chaves "as" e "is"
  var doce2 = doces.chocolate;
  var docefalso = "Água e sal";
  print('doce2 é um doce: $doce2');
  if (docefalso is! doces) {
    print('docefalso não é um doce: $docefalso');
  }
  if (docefalso is doces) {
    print('docefalso não é um doce: $docefalso');
  } else {
    print('docefalso não é um doce: $docefalso');
  }

  //Comparando valores do Enum com "as"
  if (doce2 == doces.chocolate) {
    print('doce2 é chocolate');
  }
}
