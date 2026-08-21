import 'dart:io';

void main() {
  print('=== Calculadora Simples ===');

  stdout.write('Digite o primeiro número: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a operação desejada (Soma/Subtração): ');
  String operacao = stdin.readLineSync()!.toLowerCase();

  double resultado;

  if (operacao == 'soma') {
    resultado = numero1 + numero2;
    print('$numero1 + $numero2 = $resultado');
  } else if (operacao == 'subtração' || operacao == 'subtracao') {
    resultado = numero1 - numero2;
    print('$numero1 - $numero2 = $resultado');
  } else {
    print('Operação inválida!');
  }
}
