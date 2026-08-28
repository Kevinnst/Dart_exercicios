import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro positivo: ');
  String? entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null || numero <= 0) {
    print('uPor favor, digite um número inteiro positivo válido.');
    return;
  }

  // 1. Verifica se é divisível por 3 E por 5 ao mesmo tempo (ou por 15)
  if (numero % 3 == 0 && numero % 5 == 0) {
    print('FizzBuzz');
  }
  // 2. Se não for por ambos, verifica se é divisível apenas por 3
  else if (numero % 3 == 0) {
    print('Fizz');
  }
  // 3. Verifica se é divisível apenas por 5
  else if (numero % 5 == 0) {
    print('Buzz');
  }
  // 4. Caso não seja por nenhum dos dois, imprime o próprio número
  else {
    print(numero);
  }
}
