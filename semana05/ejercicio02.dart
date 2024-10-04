import 'dart:io';

void main() {
  print("Ingrese el número de términos de Fibonacci:");
  int n = int.parse(stdin.readLineSync()!);
  
  int a = 0, b = 1;
  print("Secuencia de Fibonacci:");
  for (int i = 0; i < n; i++) {
    print(a);
    int siguiente = a + b;
    a = b;
    b = siguiente;
  }
}
