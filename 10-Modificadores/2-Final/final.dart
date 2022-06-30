import 'pessoa.dart';

///
/// Final
///  Inicializada apenas quando acessada em tempo de execução, deve ser declarada
/// Em coleções final nem todo o conteúdo será final
///

void main() {
  print('10.2) Modificadores Final\n');

  //? Objeto em queda livre leva 5s para chegar ao solo. Qual a velocidade máxima?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; //v = g * t
  print('Velocidade maxima: $velocidade m/s');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('contagem: $indice');
  }

  var pessoa = Pessoa('Gabriel', ['Mae', 'Pai']);
  pessoa.nome = 'Gabriel Benatti';
  //pessoa.familiares = [''];
  print('Nome: ${pessoa.nome}, familiares: ${pessoa.familiares}');
}
