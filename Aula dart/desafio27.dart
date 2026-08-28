import 'dart:io';

void main() {
  print('Digite o número de termos (n): ');

  final entrada = stdin.readLineSync();
  int n = int.tryParse(entrada ?? '') ?? 0;

  int anterior = 1;
  int atual = 1;

  print('\nSérie de Fibonacci até o $n-ésimo termo:');

  if (n >= 1) {
    stdout.write('$anterior ');
  }

  if (n >= 2) {
    print('$atual ');
  }

  for (int i = 3; i <= n; i++) {
    int proximo = anterior + atual;
    print('$proximo ');

    anterior = atual;
    atual = proximo;
  }

  print('');
}
