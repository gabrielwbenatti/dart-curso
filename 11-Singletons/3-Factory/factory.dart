import 'pessoa_factory.dart';

///
/// Singleton
/// - Padrão de projeto para que exista apenas uma instância da classe
/// - O construtor nomeado provado sem o construtor default impede de instanciar a classe
/// Factory
/// - Construtor factory é usado para retornar/manter a instancia original
/// - Construtor factory é capaz de retornar valores
///

singletonFactory() {
  print('11.3) Singleton Factory\n');

  var p1 = PessoaFactory();
  print(p1.nome);
  p1.nome = 'Gabriel';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'João';
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Matheus';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);
}

singletonInstancia() {
  print('11.4) Singleton Instância\n');

  var p1 = PessoaInstancia(nome: 'Gabriel');
  print('nome: ${p1.nome}, id: ${p1.identidade}');
  var p2 = PessoaInstancia(nome: 'Leila', identidade: 123123);
  print('nome: ${p2.nome}, id: ${p2.identidade}');
  p2.nome = 'João';
  print('nome: ${p1.nome}, id: ${p1.identidade}');
  print(identical(p1, p2));
}

void main() {
  singletonFactory();
  singletonInstancia();
}
