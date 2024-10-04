import 'dart:io';

bool esPrimo(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  print("Ingrese el primer número:");
  int inicio = int.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  int fin = int.parse(stdin.readLineSync()!);

  int sumatoria = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumatoria += i;
    }
  }
  print("La sumatoria de números primos entre $inicio y $fin es: $sumatoria");
}
