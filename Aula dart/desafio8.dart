import 'dart:io';

void main() {
  print('Digite uma letra: ');
  final entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print('Entrada inválida!');
    return;
  }

  final letra = entrada.toLowerCase();

  if (letra.length != 1 || !letra.contains(RegExp(r'[a-z]'))) {
    print('Por favor, digite apenas uma letra!');
    return;
  }

  final List<String> vogais = ['a', 'e', 'i', 'o', 'u'];

  if (vogais.contains(letra)) {
    print('$entrada é uma VOGAL');
  } else {
    print('$entrada é uma CONSOANTE');
  }
}
