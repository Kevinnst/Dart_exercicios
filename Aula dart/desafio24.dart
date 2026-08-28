import 'dart:io';

String numeroPorExtenso(int numero) {
  final unidades = {
    0: 'zero',
    1: 'um',
    2: 'dois',
    3: 'três',
    4: 'quatro',
    5: 'cinco',
    6: 'seis',
    7: 'sete',
    8: 'oito',
    9: 'nove',
  };

  final dezenas = {
    10: 'dez',
    11: 'onze',
    12: 'doze',
    13: 'treze',
    14: 'quatorze',
    15: 'quinze',
    16: 'dezesseis',
    17: 'dezessete',
    18: 'dezoito',
    19: 'dezenove',
    20: 'vinte',
    30: 'trinta',
    40: 'quarenta',
    50: 'cinquenta',
    60: 'sessenta',
    70: 'setenta',
    80: 'oitenta',
    90: 'noventa',
  };

  if (numero >= 0 && numero <= 9) {
    return unidades[numero]!;
  }

  if (numero >= 10 && numero <= 19) {
    return dezenas[numero]!;
  }

  if (numero >= 20 && numero <= 99) {
    final dezena = (numero ~/ 10) * 10;
    final unidade = numero % 10;

    if (unidade == 0) {
      return dezenas[dezena]!;
    }

    return '${dezenas[dezena]!} e ${unidades[unidade]!}';
  }

  return 'Número fora do intervalo permitido.';
}

void main() {
  print('Digite um número de 0 a 99:');
  final entrada = stdin.readLineSync();
  final numero = int.tryParse(entrada ?? '');

  if (numero == null || numero < 0 || numero > 99) {
    print('Número inválido! Digite um valor entre 0 e 99.');
    return;
  }

  print('Número por extenso: ${numeroPorExtenso(numero)}');
}
