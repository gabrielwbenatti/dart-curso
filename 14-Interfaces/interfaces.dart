import 'candidato.dart';

///
/// Conceito
/// - Interfaces sao modelos para implementar metodos e atributos em nossas classes
///
/// Regras
/// - Ao implementar uma interface, devemos utilizar todos os metodos a atributos
/// - No dart nao tem sintaxe para interfaces, pode ser classes concretas ou abstratas
/// - Pode implementar mais de uma interface e deve sobrescrever todos os metodos e atributos
///

void main() {
  print('15.0) Interfaces\n');

  var lula = Candidato(
    'Luiz Inacio',
    ideologia: 'esquerda',
    partido: 'PT',
  );

  lula
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Ola cidadãos irei acabar com o bolsoaro'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
