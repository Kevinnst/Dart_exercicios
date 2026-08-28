import 'dart:io';

void main() {
  print('Digite a primeira palavra:');
  String a = stdin.readLineSync()!;

  print('Digite a segunda palavra:');
  String b = stdin.readLineSync()!;

  int meioA = (a.length + 1) ~/ 2;
  int meioB = (b.length + 1) ~/ 2;

  String aFrente = a.substring(0, meioA);
  String aTras = a.substring(meioA);

  String bFrente = b.substring(0, meioB);
  String bTras = b.substring(meioB);

  String resultado = aFrente + bFrente + aTras + bTras;

  print('Resultado: $resultado');
}
