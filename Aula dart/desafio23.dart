void main() {
  List<int> valoresTeste = [
    326,
    300,
    100,
    320,
    310,
    305,
    301,
    101,
    311,
    111,
    25,
    20,
    10,
    21,
    11,
    1,
    7,
    16,
  ];

  for (int numero in valoresTeste) {
    print(decomporNumero(numero));
  }
}

String decomporNumero(int numero) {
  if (numero >= 1000 || numero < 0) {
    return "Número inválido. Insira um valor entre 0 e 999.";
  }

  int centenas = numero ~/ 100;
  int dezenas = (numero % 100) ~/ 10;
  int unidades = numero % 10;

  List<String> partes = [];

  if (centenas > 0) {
    String termo = (centenas == 1) ? "centena" : "centenas";
    partes.add("$centenas $termo");
  }

  if (dezenas > 0) {
    String termo = (dezenas == 1) ? "dezena" : "dezenas";
    partes.add("$dezenas $termo");
  }

  if (unidades > 0 || (centenas == 0 && dezenas == 0)) {
    String termo = (unidades == 1) ? "unidade" : "unidades";
    partes.add("$unidades $termo");
  }

  String resultado = "";
  if (partes.length == 1) {
    resultado = partes[0];
  } else if (partes.length == 2) {
    resultado = "${partes[0]} e ${partes[1]}";
  } else if (partes.length == 3) {
    resultado = "${partes[0]}, ${partes[1]} e ${partes[2]}";
  }

  return "$numero = $resultado";
}
