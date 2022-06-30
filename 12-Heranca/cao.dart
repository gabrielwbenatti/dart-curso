import 'mamifero.dart';

class Cao extends Mamiferos {
  String? nome;
  String? raca;

  Cao(
    this.nome,
    this.raca,
    String sexo, {
    String? idade,
    bool docil = false,
  }) : super(sexo, idade, docil) {
    this.idade = idade ?? 'indefinida';
    //this.sexo = sexo;
  }

  void acao() {
    print('late como um cão!');
  }
}
