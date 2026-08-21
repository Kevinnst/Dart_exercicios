import 'dart:io';

void main() {
  print('Digite o valor do primeiro lado: ');
  double? lado1 = double.tryParse(stdin.readLineSync() ?? '');
  print('Digite o valor do segundo lado: ');
  double? lado2 = double.tryParse(stdin.readLineSync() ?? '');
  print('Digite o valor do terceiro lado: ');
  double? lado3 = double.tryParse(stdin.readLineSync() ?? '');

  if (lado1 == null || lado2 == null || lado3 == null) {
    print('Por favor, insira valores numéricos válidos.');
    return;
  }

  if ((lado1 + lado2 > lado3) &&
      (lado1 + lado3 > lado2) &&
      (lado2 + lado3 > lado1)) {
    if (lado1 == lado2 && lado2 == lado3) {
      print('Os lados formam um Triângulo Equilátero.');
    } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
      print('Os lados formam um Triângulo Isósceles.');
    } else {
      print('Os lados formam um Triângulo Escaleno.');
    }
  } else {
    print('Os valores informados não podem formar um triângulo.');
  }
}
