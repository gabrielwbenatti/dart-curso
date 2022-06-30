import 'conta.dart';
import 'usuario.dart';

///
/// Encapsuladores são utsados para proteger os atributos e variaveis
/// Get é usado para acessar e o Set para alterar
/// Atributos ou variaveis com underline sao privados
///

void main() {
  print('09.0) Encapsuladores\n');

  Usuario usuario = Usuario('gabriel', '123456');
  usuario
    ..alteracao = true
    ..senha = '123321';
  print('Senha: ${usuario.senha}');

  Conta conta = Conta('Gabriel');
  conta
    ..deposito = 700
    ..deposito = 450
    ..saque = 100
    ..saque = 150;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 700
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 500
    ..saque = 500;

  print(conta.informacao);

  Conta contaVip = Conta.vip('Gabriel', limite: 12000);
  contaVip
    ..deposito = 15000
    ..saque = 13000
    ..limite = 16000
    ..saque = 15500;
}

// class Teste {
//   String? _nome;

//   String? get nome => _nome;

//   set nome(String? nome) {
//     _nome = nome;
//   }
// }
