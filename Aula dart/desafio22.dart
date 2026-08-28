import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite o coeficiente a: ');
  double a = double.parse(stdin.readLineSync()!);

  if (a == 0) {
    print(
      'O coeficiente "a" deve ser diferente de 0. Não é uma equação do 2º grau.',
    );
    return;
  }

  stdout.write('Digite o coeficiente b: ');
  double b = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o coeficiente c: ');
  double c = double.parse(stdin.readLineSync()!);

  if (b != 0 && c != 0) {
    print('A equação é completa.');
  } else {
    print('A equação é incompleta.');
  }

  double delta = (b * b) - (4 * a * c);
  print('Delta (Δ) = $delta');

  if (delta < 0) {
    print('A equação não possui raízes reais.');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('A equação possui apenas uma raiz real: x = $x');
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('A equação possui duas raízes reais:');
    print('x1 = $x1');
    print('x2 = $x2');
  }
}
