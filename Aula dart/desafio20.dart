import 'dart:io';

void main() {
  print('Em que turno você estuda? (M-Matutino, V-Vespertino, N-Noturno): ');
  final line = stdin.readLineSync();
  final turno = line?.toUpperCase();

  switch (turno) {
    case 'M':
      print('Bom Dia!');
      break;
    case 'V':
      print('Boa Tarde!');
      break;
    case 'N':
      print('Boa Noite!');
      break;
    default:
      print('Valor Inválido!');
  }
}
