import 'dart:io';

void main() {
  print("Ingrese un número entero:");
  int numero = int.parse(stdin.readLineSync()!);
  int numeroInvertido = 0;

  while (numero != 0) {
    numeroInvertido = numeroInvertido * 10 + numero % 10;
    numero ~/= 10;
  }
  
  print("El número invertido es: $numeroInvertido");
}
