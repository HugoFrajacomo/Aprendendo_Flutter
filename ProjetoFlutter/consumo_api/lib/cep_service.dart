import 'dart:convert';
import 'package:http/http.dart' as http;
import 'cep_model.dart';

class CepService {
  Future<CepModel> fetchCep(String cep) async {
    final URL = Uri.parse('http://brasilapi.com.br/api/cep/v2/$cep');

    final response = await http.get(URL);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return CepModel.formMap(data);
    } else {
      throw Exception('Erro ao consultar CEP');
    }
  }
}
