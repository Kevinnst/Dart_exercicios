import 'dart:io';

void main() {
  print('Informe o salário-base: ');
  final line = stdin.readLineSync();
  if (line == null || line.trim().isEmpty) return;
  double? salarioBase = double.tryParse(line.replaceAll(',', '.'));
  if (salarioBase == null) {
    print('Entrada inválida.');
    return;
  }

  double gratificacao = salarioBase * 0.05; // 5%
  double imposto = salarioBase * 0.07; // 7%
  double salarioAReceber = salarioBase + gratificacao - imposto;

  print('Salário-base: R\$ ${salarioBase.toStringAsFixed(2)}');
  print('Gratificação (5%): R\$ ${gratificacao.toStringAsFixed(2)}');
  print('Imposto (7%): R\$ ${imposto.toStringAsFixed(2)}');
  print('Salário a receber: R\$ ${salarioAReceber.toStringAsFixed(2)}');
}
