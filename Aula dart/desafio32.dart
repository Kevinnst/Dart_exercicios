void main() {
  double populacaoA = 80000;
  double populacaoB = 200000;
  double taxaA = 0.03; // 3% ao ano
  double taxaB = 0.015; // 1.5% ao ano
  int anos = 0;

  while (populacaoA < populacaoB) {
    populacaoA *= (1 + taxaA);
    populacaoB *= (1 + taxaB);
    anos++;
  }

  print('País A: ${populacaoA.toStringAsFixed(2)} habitantes');
  print('País B: ${populacaoB.toStringAsFixed(2)} habitantes');
  print('Anos necessários: $anos');
}
