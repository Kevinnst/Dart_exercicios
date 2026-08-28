import 'dart:io';

void main() {
  print('Quantos alunos na sala?');
  int quantidade = int.parse(stdin.readLineSync()!);

  List<String> alunos = [];

  for (int i = 0; i < quantidade; i++) {
    print('Digite o nome do aluno ${i + 1}:');
    String nome = stdin.readLineSync()!;
    alunos.add(nome);
  }

  alunos.sort();

  print('\nAlunos ordenados:');
  for (String aluno in alunos) {
    print(aluno);
  }
}
