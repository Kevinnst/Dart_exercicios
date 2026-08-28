import 'dart:io';

void main() {
  print('Digite um número inteiro: ');

  final entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print('Por favor, digite um número inteiro válido.');
    return;
  }

  if (numero <= 1) {
    print('O número $numero não é primo.');
    return;
  }

  int divisores = 0;

  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      divisores++;
    }
  }

  if (divisores == 2) {
    print('O número $numero é primo.');
  } else {
    print('O número $numero não é primo.');
  }
}
