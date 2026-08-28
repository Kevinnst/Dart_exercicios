import 'dart:io';

void main() {
  print('Digite uma palavra ou frase:');
  final entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print('Entrada inválida.');
    return;
  }

  final textoLimpo = entrada
      .replaceAll(' ', '')
      .toLowerCase()
      .replaceAll(RegExp(r'[áàâãä]'), 'a')
      .replaceAll(RegExp(r'[éèêë]'), 'e')
      .replaceAll(RegExp(r'[íìîï]'), 'i')
      .replaceAll(RegExp(r'[óòôõö]'), 'o')
      .replaceAll(RegExp(r'[úùûü]'), 'u')
      .replaceAll(RegExp(r'[ç]'), 'c');

  final textoInvertido = textoLimpo.split('').reversed.join('');

  print('\nTexto original: $entrada');
  print('Texto processado: $textoLimpo');
  print('Texto invertido:  $textoInvertido');

  if (textoLimpo == textoInvertido) {
    print('\nResultado: É um palíndromo!');
  } else {
    print('\nResultado: Não é um palíndromo.');
  }
}
