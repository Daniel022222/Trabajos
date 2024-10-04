import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese un número:");
  int numero = int.parse(stdin.readLineSync()!);
  int suma = 0;
  int n = numero.toString().length;
  int temp = numero;

  while (temp > 0) {
    int digito = temp % 10;
    suma += pow(digito, n).toInt();
    temp ~/= 10;
  }

  if (suma == numero) {
    print("$numero es un número Armstrong.");
  } else {
    print("$numero no es un número Armstrong.");
  }
}
