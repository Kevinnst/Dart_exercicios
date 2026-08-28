import 'dart:io';

void main() {
  print('Digite um número inteiro : ');

  final entrada = stdin.readLineSync();
  if (entrada == null || entrada.isEmpty) {
    print('Entrada inválida.');
    return;
  }

  int n = int.parse(entrada);

  print('Números primos entre 1 e $n:');

  for (int i = 2; i <= n; i++) {
    bool ehPrimo = true;

    for (int j = 2; j * j <= i; j++) {
      if (i % j == 0) {
        ehPrimo = false;
        break;
      }
    }

    if (ehPrimo) {
      print('$i ');
    }
  }
  print('');
}
