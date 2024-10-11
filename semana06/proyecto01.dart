//REBAJAS DE PENSIONES

import 'dart:io';

void main() {
  stdout.write("Ingrese la categoría (A, B, C, D): ");
  String categoria = stdin.readLineSync()!;
  
  stdout.write("Ingrese el promedio ponderado: ");
  double promedio = double.parse(stdin.readLineSync()!);

  double pension = calcularPension(categoria);
  double descuento = calcularDescuento(promedio, pension);
  double nuevaPension = pension - descuento;

  print("Pensión actual: S/. $pension");
  print("Descuento: S/. $descuento");
  print("Nueva pensión: S/. $nuevaPension");
}

double calcularPension(String categoria) {
  switch (categoria) {
    case 'A': return 550;
    case 'B': return 500;
    case 'C': return 460;
    case 'D': return 400;
    default: return 0;
  }
}

double calcularDescuento(double promedio, double pension) => promedio < 14 ? 0 :promedio < 16 ? pension * 0.10 :promedio < 18 ? pension * 0.12 :pension * 0.15;
