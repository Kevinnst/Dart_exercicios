import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;

  while (true) {
    stdout.write('Digite um número inteiro (número negativo para sair): ');
    String? line = stdin.readLineSync();
    if (line == null) {
      // EOF
      break;
    }
    line = line.trim();
    if (line.isEmpty) {
      continue;
    }

    int? n = int.tryParse(line);
    if (n == null) {
      print('Entrada inválida. Tente novamente.');
      continue;
    }

    if (n < 0) {
      break;
    }

    if (n % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }

  print('\nQuantidade de números pares: $pares');
  print('Quantidade de números ímpares: $impares');
}
