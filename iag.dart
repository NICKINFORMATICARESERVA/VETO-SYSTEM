import 'dart:math';
import 'dart:io';

void main() {
  // Leitura dos quatro números
  print('Digite quatro números separados por espaço:');
  List<String> input = stdin.readLineSync().split(' ');
  List<double> numbers = input.map((str) => double.parse(str)).toList();

  // Verificação se foram digitados exatamente 4 números
  if (numbers.length != 4) {
    print('Por favor, digite exatamente quatro números.');
    return;
  }

  // Atribuição dos números aos coeficientes da equação e ao valor de x
  double a = numbers[0];
  double b = numbers[1];
  double c = numbers[2];
  double x = numbers[3];

  // Impressão da equação do segundo grau
  print('Equação do segundo grau: ${a}x^2 + ${b}x + ${c} = 0');

  // Cálculo do valor da função
  double resultado = a * pow(x, 2) + b * x + c;
  print('Valor da função para x = $x: $resultado');

  // Verificação das raízes da equação
  double delta = pow(b, 2) - 4 * a * c;

  if (delta < 0) {
    print('A equação não possui raízes reais.');
  } else if (delta == 0) {
    double raiz = -b / (2 * a);
    print('A equação possui uma raiz real: x = $raiz');
  } else {
    double raiz1 = (-b + sqrt(delta)) / (2 * a);
    double raiz2 = (-b - sqrt(delta)) / (2 * a);
    print('A equação possui duas raízes reais: x1 = $raiz1 e x2 = $raiz2');
  }
}
