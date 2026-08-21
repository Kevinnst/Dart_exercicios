import 'dart:io';

void main() {
  print('Digite um número inteiro: ');
  final entrada = stdin.readLineSync()?.trim();

  if (entrada == null || entrada.isEmpty || int.tryParse(entrada) == null) {
    print('Entrada inválida. Por favor, digite um número inteiro válido.');
    return;
  }

  final numero = int.parse(entrada);

  if (numero % 5 == 0) {
    print('O número $numero é múltiplo de 5.');
  } else {
    print('O número $numero NÃO é múltiplo de 5.');
  }
}
