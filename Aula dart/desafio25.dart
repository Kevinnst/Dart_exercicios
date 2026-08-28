import 'dart:io';

void main() {
  // Lê dois números inteiros do stdin
  stdout.write('Digite o primeiro inteiro: ');
  String? s1 = stdin.readLineSync();
  stdout.write('Digite o segundo inteiro: ');
  String? s2 = stdin.readLineSync();

  if (s1 == null || s2 == null) return;

  int? a = int.tryParse(s1.trim());
  int? b = int.tryParse(s2.trim());
  if (a == null || b == null) {
    print('Entrada inválida. Informe números inteiros.');
    return;
  }

  int start = a < b ? a : b;
  int end = a < b ? b : a;

  // Gera os números inteiros no intervalo compreendido por eles (inclusivo)
  for (int i = start; i <= end; i++) {
    print(i);
  }
}
