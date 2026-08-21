import 'dart:io';

void main() {
  print('Digite o valor em metros: ');
  final input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    double metros = double.parse(input);

    double centimetros = metros * 100;

    print('$metros metros equivalem a $centimetros centímetros.');
  } else {
    print('Por favor, insira um valor válido.');
  }
}
