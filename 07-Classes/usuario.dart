class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    // Dados recuperado do banco de dados
    var usuario = 'gabriel@email.com';
    var senha = '123456';

    if ((this.usuario == usuario) && (this.senha == senha)) {
      print('Usuario autenticado\n');
    } else {
      print('Usuario não autenticado');
    }
  }
}
