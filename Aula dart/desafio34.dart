void main() {
  List<int> vetorImpares = [];

  for (int i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      vetorImpares.add(i);
    }
  }

  print('Números ímpares armazenados no vetor:');
  print(vetorImpares);
}
