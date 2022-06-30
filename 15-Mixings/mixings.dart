///
/// Conceito
/// - MIxin permite implementar metodos e atributos de outras classes
///
/// Regras
/// - Devem ser implementados antes das Interfaces
/// - Podem ser implementados a partir de uma classe concreta ou abstrata
/// - Não pode implementar uma classe que estenda e extender de uma classe mixing
/// - Pode implementar mais de um mizin, e não é obrigatorio usar todos os metodos
/// - As classes que possuem metodos iguais serão sobrescritas em ordem ate a class herdeira
///
/// ON
/// - É orbigatório declarar sua classe como mixing
/// - Restringi o uso do mixin as classes que estendem ou implementam a class declarada

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

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

abstract class Cidadao {
  String? nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadao tem direitos e deveres');
  }
}

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoCompras();
}

abstract class Conta {
  double? _saldo;
  double salario = 33000;

  get saldo => this._saldo;

  set depositar(double valor) => this._saldo = valor;
}

void main() {
  print('15.0) Mixings\n');

  var lula = Candidato('Lula', ideologia: 'esquerda', partido: 'pt');

  lula
    ..objetivo = 'ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'vou acabar com a corrupção'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
