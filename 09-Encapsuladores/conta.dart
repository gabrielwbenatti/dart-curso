import 'dart:math';

class Conta {
  bool alterarLimite = false;

  int? _nroConta;
  String? _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._nroConta = Random().nextInt(9999);
    print(
      'Conta nro: "${_nroConta}", nome "${_nome}" criado com sucesso',
    );
  }

  Conta.vip(String nome, {double limite = 1000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._nroConta = Random().nextInt(9999);
    print(
      'Conta nro: "${_nroConta}", nome "${_nome}" criado com sucesso',
    );
  }

  // getter padrão
  int? get nroConta => this._nroConta;
  double get saldo => this._saldo;

  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limite alterado para $limite');
    } else {
      print('Erro! Acesso negado');
    }
  }

  String get informacao =>
      'Titular $_nome, nro conta: $_nroConta, saldo: $_saldo, limite: $_limite';

  set deposito(double valor) {
    if (valor > 0) {
      this._saldo += valor;
      print('Deposito de $valor, saldo atualizado $_saldo');
    }
  }

  set saque(double valor) {
    if (valor > 0 && valor <= _limite) {
      if (valor <= _saldo) {
        this._saldo -= valor;
        print('Saque de $valor, saldo atualizado $_saldo');
      } else {
        print('Saque de $valor indisponivel. Valor disponivel $_saldo');
      }
    } else {
      print('Limite para saque: $_limite');
    }
  }
}
