import 'dart:io';

void main() {
  List<double> notas = [];

  for (int i = 0; i < 4; i++) {
    stdout.write('Digite a ${i + 1}ª nota: ');
    double nota = double.parse(stdin.readLineSync() ?? '0');
    notas.add(nota);
  }

  double media = notas.reduce((a, b) => a + b) / notas.length;

  print('Média: ${media.toStringAsFixed(2)}');
  print('Notas maiores que a média:');

  for (double nota in notas) {
    if (nota > media) {
      print(nota.toStringAsFixed(2));
    }
  }
}
