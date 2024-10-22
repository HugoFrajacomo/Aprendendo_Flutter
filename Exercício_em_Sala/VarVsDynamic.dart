void main() {
  // Usando var
  var variavelVar = 'Texto';
  print('Tipo de variavelVar: ${variavelVar.runtimeType}'); // String

  // Tentando mudar o tipo de variavelVar (isso causará um erro)
  //variavelVar = 123; // Erro: A value of type 'int' can't be assigned to a variable of type 'String'

  // Usando dynamic
  dynamic variavelDynamic = 'Texto';
  print('Tipo de variavelDynamic: ${variavelDynamic.runtimeType}'); // String

  // Mudando o tipo de variavelDynamic
  variavelDynamic = 123;
  print('Tipo de variavelDynamic: ${variavelDynamic.runtimeType}'); // int
}
