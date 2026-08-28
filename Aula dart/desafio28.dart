import 'dart:io';

void main() {
  print('Digite um número inteiro positivo: ');

  final entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print('Por favor, digite um número inteiro válido.');
  } else if (numero < 0) {
    print('Não existe fatorial de número negativo.');
  } else {
    int fatorial = 1;

    for (int i = 1; i <= numero; i++) {
      fatorial *= i;
    }

    print('O fatorial de $numero é: $fatorial');
  }
}
