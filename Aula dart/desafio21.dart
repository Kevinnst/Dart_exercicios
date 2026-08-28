import 'dart:io';

void main() {
  print('Digite o primeiro número:');
  double numero1 = double.parse(stdin.readLineSync() ?? '0');

  print('Digite o segundo número:');
  double numero2 = double.parse(stdin.readLineSync() ?? '0');

  print('Escolha a operação desejada:');
  print('1 - Soma');
  print('2 - Subtração');
  print('3 - Multiplicação');
  print('4 - Divisão');

  String? operacao = stdin.readLineSync();
  double resultado;

  switch (operacao) {
    case '1':
      resultado = numero1 + numero2;
      print('Resultado da Soma: ${resultado.toStringAsFixed(2)}');
      break;
    case '2':
      resultado = numero1 - numero2;
      print('Resultado da Subtração: ${resultado.toStringAsFixed(2)}');
      break;
    case '3':
      resultado = numero1 * numero2;
      print('Resultado da Multiplicação: ${resultado.toStringAsFixed(2)}');
      break;
    case '4':
      if (numero2 == 0) {
        print('Erro: não é possível dividir por zero.');
        return;
      }
      resultado = numero1 / numero2;
      print('Resultado da Divisão: ${resultado.toStringAsFixed(2)}');
      break;
    default:
      print('Operação inválida!');
      break;
  }
}
