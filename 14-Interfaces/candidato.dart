import 'cidadao.dart';
import 'postagem.dart';
import 'presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(
    super.nome, {
    this.ideologia,
    this.partido,
  }) : super() {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // interfaces
  @override
  String? postagem;
  String? partido;
  String? ideologia;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  void ideologiaPolitica() {
    print(
      '$nome é canditado com ideologia de $ideologia pelo partido $partido',
    );
  }
}
