void main() {
  List lst = [1, 2, 3, 4, 5];
  var lst2 = [6, 7, 8, 9, 10];
  Object lst3 = [11, 12, 13, 14, 15];
  print(lst);
  print(lst2);
  print(lst3);

  //Tamanho da lista
  int x = lst.length;
  print(x);

  //Métodos
  lst.add(6);
  print(lst);
  lst.remove(6);
  print(lst);
  lst.insert(0, 0);
  print(lst);
  lst.removeAt(0);
  print(lst);
  lst.removeLast();
  print(lst);
  lst.removeRange(0, 2);
  print(lst);
  lst.addAll([1, 2, 3, 4, 5]);
  print(lst);
  lst.sort();
  print(lst);
  lst.shuffle();
  print(lst);
  lst.clear();
  print(lst);
  lst.addAll([1, 2, 3, 64, 32]);
  print(lst);
  print(lst.indexOf(64)); //procura o número na lista e retorna o index
  print(lst.indexOf(32));

  //set() semelhante a lista mas não é ordenado
  Set cookies = Set();
  cookies.add("Bolacha");
  print(cookies);
  cookies.addAll(["Biscoito", "Panetone", "Chocolate"]);
  print(cookies);
  cookies.remove("Chocolate");
  print(cookies);

  //Map
  var pessoa = {"nome": "João", "idade": 25, "altura": 1.75, "peso": 70.5};
  print(pessoa);

  var pessoas = Map();
  pessoas["nome"] = "Maria";
  pessoas["idade"] = 30;
  pessoas["altura"] = 1.65;
  pessoas["peso"] = 60.5;

  print(pessoas);

  var listaPessoas = Map<String, int>();
  listaPessoas["João"] = 25;
  listaPessoas["Maria"] = 30;

  print(listaPessoas);
}
