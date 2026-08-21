import 'dart:io';

void main() {
  print('Digite a sua idade:');
  int idade = int.parse(stdin.readLineSync() ?? "0");

  if (idade >= 18) {
    print('Você é maior de idade.');
  } else {
    print('Você é menor de idade.');
  }
}
