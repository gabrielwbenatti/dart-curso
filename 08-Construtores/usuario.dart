class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, this.cargo}) {
    this.nome = nome ?? 'sem nome';
    this.cargo = cargo ?? 'usuario';
    print(
      'Construtor resumido com parametros nomeados default! ${this.toString()}\n',
    );
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = nome ?? 'sem nome';
    this.cargo = 'administrador';
    print(
      'Construtor resumido com parametros nomeados default! ${this.toString()}\n',
    );
  }

  void autenticar() {
    // Dados recuperados do banco de dados
    var user = 'admin@email';
    var senha = 'abc123';

    (this.user == user && this.senha == senha)
        ? print('Usuario autenticado')
        : print('Usuario não autenticado');
  }
}
