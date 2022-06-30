import 'animal.dart';
import 'objeto.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
/// Os construtores devem ter o mesmo nome da classe
/// Eles são iniciados quando instanciamos as classes, podendo fazer configurações iniciais
///

void main() {
  print('08.0) Construtores\n');

  Objeto objeto = Objeto();
  objeto.nome = 'Mesa';
  print('Nome: ${objeto.nome}\n');

  Animal animal = Animal('Chloe', 'Pug');
  print(
    'Nome: ${animal.nome}, raça: ${animal.raca}, idade: ${animal.idade}\n',
  );

  Pessoa pessoa = Pessoa('Gabriel', 20, altura: 1.70);
  print(
    'Nome: ${pessoa.nome}, idade: ${pessoa.idade}, cor: ${pessoa.cor}, altura: ${pessoa.altura}',
  );

  Usuario usuario = Usuario('admin@email', 'abc123', nome: 'Gabriel');
  print(
    'Usuario: ${usuario.user}, senha: ${usuario.senha}, nome: ${usuario.nome}, cargo: ${usuario.cargo}',
  );
  usuario.autenticar();

  Usuario admin = Usuario.admin('admin@email', 'abc123');
  print(
    'Usuario: ${admin.user}, senha: ${admin.senha}, nome: ${admin.nome}, cargo: ${admin.cargo}',
  );
}
