import 'dart:io';

void main() {
  stdout.write('Digite uma palavra: ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print('Entrada inválida.');
    return;
  }

  List<String> consoantesEncontradas = [];

  String vogais = 'aeiouáàãâéêíóõôúü';

  String palavra = entrada.toLowerCase();

  for (int i = 0; i < palavra.length; i++) {
    String caractere = palavra[i];

    bool ehLetra = RegExp(r'[a-zà-ú]').hasMatch(caractere);
    bool ehVogal = vogais.contains(caractere);

    if (ehLetra && !ehVogal) {
      consoantesEncontradas.add(caractere);
    }
  }

  print('\nPalavra digitada: $entrada');
  print('Vetor de consoantes: $consoantesEncontradas');
  print('Quantidade de consoantes: ${consoantesEncontradas.length}');
}
