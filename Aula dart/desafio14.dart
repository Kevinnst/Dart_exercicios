import 'dart:io';

void main() {
  print('Digite o sexo (F/M): ');

  final entrada = stdin.readLineSync()?.trim();
  final letra = entrada?.toUpperCase() ?? '';

  switch (letra) {
    case 'F':
      print('F - Feminino');
      break;
    case 'M':
      print('M - Masculino');
      break;
    default:
      print('Sexo Inválido');
  }
}
