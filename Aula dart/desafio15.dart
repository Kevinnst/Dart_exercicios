import 'dart:io';

void main() {
  print('Digite o salário do funcionário: ');
  final line = stdin.readLineSync();
  if (line == null || line.trim().isEmpty) return;
  double? salario = double.tryParse(line.replaceAll(',', '.'));
  if (salario == null) {
    print('Entrada inválida.');
    return;
  }

  double aumento = salario * 0.25;
  double novoSalario = salario + aumento;

  print('\nSalário anterior: R\$ ${salario.toStringAsFixed(2)}');
  print('Aumento (25%): R\$ ${aumento.toStringAsFixed(2)}');
  print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');
}
