# construtor de factory

Pode ser usado quando o construtur nem sempre cria uma nova instância de classe da qual ele está definido. Isso pode ser usado quando os dadso estão sendo armazenados em cache e queremos refatorar uma instância do cache em vez de construir uma nova instância. 

Por exemplo, suponha que estamos armazenando em cach instâncias de Person. 

Podemos criar um construtor factory que verifica se a inst^}Ancia de Person já está emcache e retorna um valor do cache ou, se não houver nenhuma entrada de cache, constroi uma nova instância de Person.

Para exemplo a seguir, imagine que temos algum serviço de cash que podemos solicitar uma instÂncia:

factory Person.fromCache(String firstName, string LastName){
    if(_cacheService.ContainsPerson(firstName, lastName)){
        return _cacheServece.getPerson(firstName, lastName);
    } else {
        return Person(firstName, lastName);
    }
}

observe que um construtor factory não tem acesso a palavra chave this porque nenhuma instância da classe foi criada ainda, então ele precisa acessar outro construtor para criar uma nova instância da classe.

O Factory é útil quando você quer:

1) Retornar uma instância existente: Em vez de criar um novo objeto, o factory pode retornar uma instância existente, o que ajuda a economizar memória e gerenciar melhor os objetos criados( Conehcido como sigleton pattern). 

2) Escolher uma subclasse para instância: Em algumas situações, factory pode decidir qual subclasse retornar, dependendo das condições iniciais.

3) manipular os dados de entrada: um factory permite fazer verificações e transformações nos dados antes de criar a instância. 

4) Retornar tipos específicos baseados em condição: Ele pode retornar um tipo diferente ou transformar os dados antes de instanciar. 

Diferençã entre factory e construtur normal:

 - Construtor normal: cria uma nova instância de classe toda vez que é chamado, sem exceções.
 - Construtor factory: tem a liberdade de decidir se cria uma nova instância, reutiliza uma existente ou até mesmo retorna uma instância de outra classe.

# Programação Assíncrona

Quando nosso código chama um método que é uma tarefa de longa duração, mas não queremos bloquear a execução de outras partes  do aplicativo, como a interface do usuário (UI), podemos marcar o método como assíncrono usando a palavra chave async. Isso informa a todo o código que chama esse método que ele pode ser de longa execução, portanto, não deve bloquear a execução do thread enquanto aguarda o resultado. Podemos então chamar o método e continuar a execução de outro código. 

No entanto, podemos querer obter um resultado do método de longa execução, então precisamos retornar a chamada do métodos após o método de longa execução ter retornado. Para fazer isso, devemos especificar que queremos retornar quando houver uma resposta, usando a palavra chave Await.

Uma destinção fundamental entre async e await é que o próprio método declara sua assincronidade usando async, mas é o código que chama o método que especifica que ele retornará quando houver uma resposta por meio do uso do await. 

Então, declaramos que o método deve ser chamado de forma assíncrona usando async, e podemos ter especificado que queremos voltar p/ a chamada do método quando houver um resultado usando await, mas o que o método retorna ? 

O objeto Future<ResultType> em Dart representa um valor que será fornecido em algum momento futuro. Ele pode ser usado para marcar um método com um resultado futuro, ou seja, um metodo que retorna um objeto Future<ResultType> que não terá o valor de um resultado imediatamente, mas, em vez disso, após alguma computação em um ponto posterior no tempo.

//Arquivo cep_service.dart
import 'dart:convert';
import 'package: http/http.dart' as http;
import 'cep_modal.dart';

class CepService{
    Future<CepModel> fetchCep(String cep) async{
        final url = Uri.parse('http://brasilapi.com.br/api/cep/v2/$cep');

        final response = await http.get(URL);

        if(response.StatusCode == 200) {
            final data = jsonDecode(response.body);
            return CepModel.fromMap(data);
        } else {
            throw Exception('Erro ao consultar CEP');
        }
    }
}

//Arquivo Cep_model.dart
class CepModel{
    final String cep;
    final String state;
    final String city;

    cepModel({
        required this.cep,
        required this.state,
        required this.city
    });

    factory CepModel.fromMap(Map<String, dynamic> map){
        return CepModel(
            cep:map['cep'],
            State:map['State'],
            City:map['city']
        );
    }
}

