import 'animal.dart';

abstract class Artropode extends Animal {
  bool? voa;

  Artropode.insetos(idade, {docil}) : super.invertebrados(idade, docil: docil) {
    this.voa = true;
  }

  Artropode.aracnideos(idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.voa = false;
  }

  Artropode.crustaceos(idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.voa = false;
  }
}
