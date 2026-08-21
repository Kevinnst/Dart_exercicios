import 'dart:io';

void main() {
  print('Digite o primeiro número:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro número:');
  double num3 = double.parse(stdin.readLineSync()!);

  List<double> numeros = [num1, num2, num3];

  numeros.sort((a, b) => b.compareTo(a));

  print('\nOs números em ordem decrescente são:');
  print('${numeros[0]}, ${numeros[1]}, ${numeros[2]}');
}
