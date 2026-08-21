import 'dart:io';

void main() {
  print('Digite o salário atual do funcionário: ');
  double salario = double.parse(stdin.readLineSync()!);

  print('Digite o percentual de aumento (ex: 15 para 15%): ');
  double percentual = double.parse(stdin.readLineSync()!);

  double valorAumento = salario * (percentual / 100);
  double novoSalario = salario + valorAumento;

  print('\n--- Resultados ---');
  print('Valor do aumento: R\$ ${valorAumento.toStringAsFixed(2)}');
  print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');
}
