void main() {
  //Estrutura de loop
  //For
  for (int i = 0; i < 10; i++) {
    print('Valor de i: $i');
  }

  //utilizando for para percorrer uma lista
  print("For com lista");
  List numerosAleatoreos = [4, 10, 15, 20, 25, 30, 35, 40, 45, 50];
  for (int i = 0; i < numerosAleatoreos.length; i++) {
    print('Valor de i: ${numerosAleatoreos[i]}');
  }

  //utilizando foreach
  for (int numero in numerosAleatoreos) {
    print('Valor: $numero');
  }

  //utilizando foreach com arrow function
  print("foreach");
  numerosAleatoreos.forEach((numero) => print('Resumido Valor: $numero'));

  //for duplo
  print("--------- Coordenadas --------");
  var coordenadas = {
    [1, 2],
    [3, 4],
    [5, 6],
    [7, 8]
  };

  for (var coordenada in coordenadas) {
    for (var item in coordenada) {
      print('Para a $coordenada o valor do ponto é: $item');
    }
  }

  //While
  int j = 0;
  while (j < 10) {
    print('Valor de j: $j');
    j++;
  }

  //Do While
  int k = 0;
  do {
    print('Valor de k: $k');
    k++;
  } while (k < 10);
}
