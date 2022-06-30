import 'artropode.dart';

class Abelha extends Artropode {
  bool? voando;

  Abelha(
    this.voando,
    bool? voa, {
    bool docil = false,
  }) : super.insetos(
          'indefinida',
          docil: docil,
        );
}
