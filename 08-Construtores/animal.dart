class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(String nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.idade = idade;
    this.raca = raca;
    print('Construtor com parametros! ${this.toString()}');
  }
}
