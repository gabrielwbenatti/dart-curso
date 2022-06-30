import 'cao.dart';

///
/// Metodos (override/sobreposicao != overload/sobrecarga)
/// - Override: temos a sobrescrita dos metodos da classe pai na classe herdeira
///
/// Construtores
/// - Super se refere ao construtor da classe herdeira
///
/// Classes Abstratas
/// - Não podem ser instanciadas, servem como modelo
/// - Metodos sem escopo devem ser sobrescritos nas classes herdeiras
///

void main() {
  print('13.0) Sobrescrita de metodos, atributos e construtores\n');

  var cao = Cao.domestico('Digão', 'Pitbull', 'Macho');
  print(
    'nome ${cao.nome} raça ${cao.raca} sexo ${cao.sexo} idade ${cao.idade} docil ${cao.docil}',
  );

  print(
    'desenvolvimento ${cao.desenvolvimento} tipo ${cao.coluna! ? 'vertebrado' : 'invertebrado'}',
  );
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print(cao);
}
