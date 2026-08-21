import 'dart:io';

void main() {
  print('Digite o valor do depósito (R\$): ');
  final line1 = stdin.readLineSync();
  double? deposito = double.tryParse(line1?.replaceAll(',', '.') ?? '');

  print('Digite a taxa de juros (%): ');
  final line2 = stdin.readLineSync();
  double? taxaJuros = double.tryParse(line2?.replaceAll(',', '.') ?? '');

  if (deposito == null || taxaJuros == null || deposito < 0 || taxaJuros < 0) {
    print('Por favor, informe valores numéricos válidos.');
    return;
  }

  double rendimento = deposito * (taxaJuros / 100);
  double valorTotal = deposito + rendimento;

  print('\n--- Resultado ---');
  print('Valor do rendimento: R\$ ${rendimento.toStringAsFixed(2)}');
  print('Valor total após rendimento: R\$ ${valorTotal.toStringAsFixed(2)}');
}
