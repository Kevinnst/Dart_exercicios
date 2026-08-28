void main() {
  print(trocarECombinar('mix', 'pod')); // Retorna: pox mid
  print(trocarECombinar('dog', 'dinner')); // Retorna: dig donner
}

String trocarECombinar(String a, String b) {
  // Pega os 2 primeiros caracteres de 'b' e junta com o restante de 'a'
  String novaA = b.substring(0, 2) + a.substring(2);

  // Pega os 2 primeiros caracteres de 'a' e junta com o restante de 'b'
  String novaB = a.substring(0, 2) + b.substring(2);

  // Retorna as duas palavras separadas por espaço
  return '$novaA $novaB';
}
