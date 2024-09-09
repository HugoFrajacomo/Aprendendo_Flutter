//Dart run Aula01.dart -> Executar no terminal para testar o código
void main() {
  String s1 = "Teste";
  String s2 = 'Teste2';
  print(s1);
  print(s2);

  //Valores numéricos
  int n1 = 1;
  double n2 = 1.5;

  print(n1);
  print(n2);

  print("Convertendo valores");
  //Conversão de tipos
  String d = n2.toString();
  double f = double.parse(d);
  print(d);
  print(f);

  //Listas
  print("Trabalhando com listas");
  List lst = [1, 2, 3, 4, 5];
  print(lst);

  //Variável dinâmica
  dynamic x = "teste";
  print(x);
  x = 1;
  print(x);

  //Variáveis nulas
  String? l;
  print(l);

  //Constantes
  const int c = 1;
  print(c);
  const String day = "Segunda";
  print(day);
  //const dataHora = DateTime.now(); não funciona pois invoca em tempo de compilação
  final dataHora = DateTime.now(); //pode fazer durante o tempo de execução
  print(dataHora);

  //Interpolando print para uncluír dados em uma única linha
  String nome = "João";
  int idade = 25;
  print("O nome é $nome e a idade é $idade");
  print("O nome é $nome e o número da lista é ${lst[0]}");
}
