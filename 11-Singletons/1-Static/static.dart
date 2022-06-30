import 'pessoa_static.dart';

///
/// Singleton
/// - Padrão de projeto para que exista apenas uma instância da classe
/// - O construtor nomeado provado sem o construtor default impede de instanciar a classe
/// Static
/// - A instância pode ser acessada diretamente
///

void main() {
  print('11.1) Singleton Static\n');

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Gabriel';
  print(PessoaStatic.instancia.nome);

  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  p1.nome = 'João';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Matheus';
  print(PessoaStatic.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instancia);
}
