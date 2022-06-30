import 'calculos.dart';

///
/// Static
/// A variável fica disponível na própria classe em vez de suas instancias/objetos
/// Em metodos estáticos deve usar variáveis estaticas da classe
/// Variáveis estáticas podem ser acessadas sem instanciar classes/objetos
///

void main() {
  print('10.1) Modificadores Static\n');

  double raio = 5;
  var calculos1 = Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print(
      'Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'}, metodos diferentes!');
  ;
}
