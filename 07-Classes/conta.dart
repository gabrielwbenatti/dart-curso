import 'dart:math';

class Conta {
  String nome = 'Gabriel';
  int nConta = new Random().nextInt(10000);
  double saldo = 0;

  double consultarSaldo() => this.saldo;

  double desconto(int faltas) => (faltas > 1 ? 0.8 : (faltas == 1 ? 0.9 : 1));

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas) + bonus);
    print(
      'Salario calculado: R\$$salarioCalculado, bonus R\$$bonus, descontos R\$${desconto(faltas)}',
    );
  }

  void depositar(double valor) {
    this.saldo += valor;
    print('Depositado R\$$valor, saldo: R\$$saldo');
  }

  void sacar(double valor) {
    this.saldo -= valor;
    print('Sacado R\$$valor, saldo R\$$saldo');
  }
}
