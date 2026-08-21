import 'dart:io';

void main() {
  print('Digite um número inteiro: ');

  final entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print('Por favor, digite um número inteiro válido.');
    return;
  }

  if (numero % 2 == 0) {
    print('O número $numero é PAR.');
  } else {
    print('O número $numero é ÍMPAR.');
  }
}
