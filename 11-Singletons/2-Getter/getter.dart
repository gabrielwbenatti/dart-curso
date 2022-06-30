import 'pessoa_getter.dart';

///
/// Singleton
/// - Padrão de projeto para que exista apenas uma instância da classe
/// - O construtor nomeado provado sem o construtor default impede de instanciar a classe
/// Getter
/// - A instância provada é acessada através do get
///

void main() {
  print('11.2) Singleton Getter\n');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Gabriel';
  print(PessoaGetter.instancia.nome);

  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'João';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Matheus';
  print(PessoaGetter.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaGetter.instancia);
}
