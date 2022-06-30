class Pessoa {
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  Pessoa(this.nome, this.idade, {this.cor, this.altura = 0}) {
    // this.cor = (cor == null) ? 'indefinido' : cor;
    this.cor = cor ?? 'indefinido';
    print('Construtor com parametros nomeados! ${this.toString()}');
  }
}
