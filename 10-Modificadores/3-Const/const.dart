import 'brasil.dart';

///
/// Const
/// - Inicializada em tempo de compilação, deve ser declarada como constante
/// - Ao nível de classe deve ser estática para ficar disponível na classe
/// - Em coleções const todo o conteúdo deve ser constante
/// Objeto Imutável
/// - O construtor deve ser constante
/// - Variáveis devem ser final ou static const
///

void main() {
  print('10.3) Modificadores Const\n');

  const pi = 3.1415;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('Resultado $resultado');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final listaFinal = const [0, 1];
  //listaFinal.add(2);
  print(listaFinal);

  const listaConst = [1, 2, pi];
  //listaConst.add(pi);
  print(listaConst);

  for (int i = 0; i < 3; i++) {
    final indiceFinal = i;
    const indiceConst = 1;
    print('contagem: ${indiceConst + indiceFinal}');
  }

  var pais = Brasil(-15.792371, -47.882326);
  print('\nobjeto $pais capital: ${Brasil.capital} ');
  print('\nlatitude: ${pais.latitude} longitude: ${pais.longitude}');
  print('\nestados: ${Brasil.estados}');
}
