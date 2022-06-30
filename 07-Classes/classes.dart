import 'conta.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
/// Classes => Objetos
/// Variaveis => atributos
/// Funcoes => metodos
///

void main() {
  print('07.0) Classes/Objetos\n');

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'gabriel';
  pessoa1.idade = 20;
  pessoa1.info();

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'juliano';
  pessoa2.idade = 22;
  print('Nome: ${pessoa2.nome}, idade: ${pessoa2.idade}');

  Usuario usuario = Usuario();
  usuario
    ..usuario = 'gabriel@email.com'
    ..senha = '12345'
    ..autenticar();

  Conta conta = Conta();
  print(
    'Nome: ${conta.nome}, nro Conta: ${conta.nConta}, saldo R\$${conta.saldo}',
  );
  conta
    ..calcularSalario(950, 150, 2)
    ..depositar(150)
    ..sacar(50);
}
