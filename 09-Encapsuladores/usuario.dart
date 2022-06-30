class Usuario {
  bool alteracao = false;
  String? nome;
  String? _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

  //Getter padrão
  String? get senha => _senha;

  //Setter padrão
  set senha(String? senha) {
    if (alteracao) {
      _senha = senha;
      print('Senha alterada');
    } else {
      print('Erro! Acesso negado.');
    }
  }
}
