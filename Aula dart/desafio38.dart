import 'dart:io';

void main() {
  List<String> nomes = [];

  List<List<double>> notasEMedias = List.generate(
    4,
    (_) => List.filled(5, 0.0),
  );

  for (int i = 0; i < 4; i++) {
    print('Digite o nome do ${i + 1}º aluno:');
    String nome = stdin.readLineSync() ?? 'Aluno ${i + 1}';
    nomes.add(nome);

    double soma = 0;

    for (int j = 0; j < 4; j++) {
      print('Digite a ${j + 1}ª nota do aluno $nome:');
      double nota = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

      notasEMedias[i][j] = nota;
      soma += nota;
    }

    notasEMedias[i][4] = soma / 4;
    print('');
  }

  print('\n--- RESULTADOS FINAIS ---');
  for (int i = 0; i < 4; i++) {
    print('Aluno: ${nomes[i].padRight(15)} | Notas: ');

    for (int j = 0; j < 4; j++) {
      print('${notasEMedias[i][j].toStringAsFixed(1)}  ');
    }

    print('| Média: ${notasEMedias[i][4].toStringAsFixed(1)}');
  }
}
