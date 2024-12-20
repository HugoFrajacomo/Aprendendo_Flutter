void main() {
  var c1 = Carro(320);

  while (!c1.estaNoLimite()) {
    print("A velocidade atual é ${c1.acelerar()} km/h.");
  }

  print(
      "O carro chegou na velocidade máxima de ${c1.velocidadeAtual} km/h."); //utilizando get para receber a velocidade do carro.

  while (c1.estaParado()) {
    print("A velocidade atual é ${c1.frear()} km/h.");
  }

  c1.velocidadeAtual = 500; // utilizando set para alterar a velocidade
  print("O carro está com velocidade ${c1.velocidadeAtual} km/h");
}

class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if (deltaValido && novaVelocidade >= 0) {
      this._velocidadeAtual = novaVelocidade;
    }
  }

  int acelerar() {
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return _velocidadeAtual == 0;
  }
}
