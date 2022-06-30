import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia =
      PessoaFactory._construtorNomeado('indefinido');
  String? nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    //configurações iniciais
  }
}

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  String? nome;
  final int? _identidade;

  factory PessoaInstancia({
    String nome = 'indefinido',
    int? identidade,
  }) {
    identidade = identidade ?? Random().nextInt(999999 + 1);
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade);

  int? get identidade => _identidade;
}
