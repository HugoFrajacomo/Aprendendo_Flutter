// main.dart
import 'package:flutter/material.dart';
import 'cep_model.dart';
import 'cep_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CepScreen(),
    );
  }
}

class CepScreen extends StatefulWidget {
  @override
  _CepScreenState createState() => _CepScreenState();
}

class _CepScreenState extends State<CepScreen> {
  final _cepController = TextEditingController();
  final _cepService = CepService();
  CepModel? _cepData;
  String? _errorMessage;

  void _consultarCep() async {
    final cep = _cepController.text.trim();
    setState(() {
      _cepData = null;
      _errorMessage = null;
    });
    try {
      final data = await _cepService.fetchCep(cep);
      setState(() {
        _cepData = data;
      });
    } catch (e) {
      setState(() {
        // _errorMessage = 'CEP não encontrado ou inválido';
        _errorMessage = 'CEP não encontrado ou inválido';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Consulta CEP')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _cepController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite o CEP',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _consultarCep,
              child: Text('Consultar CEP'),
            ),
            SizedBox(height: 20),
            if (_cepData != null) ...[
              Text('CEP: ${_cepData!.cep}'),
              Text('Estado: ${_cepData!.state}'),
              Text('Cidade: ${_cepData!.city}'),
            ] else if (_errorMessage != null) ...[
              Text(
                _errorMessage!,
                style: TextStyle(color: Colors.red),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
