import 'mamiferos.dart';

class Cao extends Mamiferos {
  String? nome;
  String? raca;

  Cao.domestico(
    this.nome,
    this.raca,
    String sexo, {
    String idade = 'indefinida',
    bool docil = true,
  }) : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(
    this.nome,
    this.raca,
    String sexo, {
    String idade = 'indefinida',
    bool docil = false,
  }) : super.placentarios(sexo, idade, docil: docil);

  @override
  void dormir() {
    print('dorme como um cao'); //sobrescreve metodo da classe SUPER
    //super.dormir();
  }

  @override
  void alimentar() {
    super.alimentar();
    print('cao');
  }

  @override // -> opcional
  void reproduzir() {
    print('reproduz como um cao');
  }

  void acao() {
    print('late como um cao');
  }

  String toString() {
    return 'Instance of \'${this.runtimeType}\' nome: $nome raca $raca sexo $sexo';
  }
}
