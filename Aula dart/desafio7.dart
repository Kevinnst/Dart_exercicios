import 'dart:io';

void main() {
  print('Digite o nome da disciplina:');
  final disciplina = stdin.readLineSync();

  print('Digite a 1ª nota:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a 2ª nota:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a 3ª nota:');
  double nota3 = double.parse(stdin.readLineSync()!);

  print('Digite a 4ª nota:');
  double nota4 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  final condicao = media >= 7 ? 'Aprovado' : 'Reprovado';

  print('\n--- Resultado ---');
  print('Disciplina: $disciplina');
  print('Média: ${media.toStringAsFixed(2)}');
  print('Condição: $condicao');
}
