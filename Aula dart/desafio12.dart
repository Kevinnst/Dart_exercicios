import 'dart:io';

void main() {
  print('Digite um valor:');
  var valor = double.tryParse(stdin.readLineSync() ?? '');

  if (valor == null) {
    print('Valor inválido!');
    return;
  }

  if (valor > 0) {
    print('O valor é positivo.');
  } else if (valor < 0) {
    print('O valor é negativo.');
  } else {
    print('O valor é zero.');
  }
}
