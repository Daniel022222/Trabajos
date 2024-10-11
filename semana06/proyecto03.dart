//VENTA DE CHOCOLATES

import 'dart:io';

void main() {
  stdout.write("Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ");
  String tipoChocolate = stdin.readLineSync()!;
  
  stdout.write("Ingrese la cantidad de chocolates: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  double precioUnitario = obtenerPrecioChocolate(tipoChocolate);
  double importeCompra = precioUnitario * cantidad;
  double descuento = calcularDescuento(cantidad, importeCompra);
  double importePagar = importeCompra - descuento;
  int caramelosObsequio = calcularCaramelosObsequio(importePagar, cantidad);

  print("Importe de la compra: S/. $importeCompra");
  print("Importe del descuento: S/. $descuento");
  print("Importe a pagar: S/. $importePagar");
  print("Caramelos de obsequio: $caramelosObsequio");
}

double obtenerPrecioChocolate(String tipo) => tipo == 'Primor' ? 8.5 :tipo == 'Dulzura' ? 10.0 :tipo == 'Tentación' ? 7.0 :tipo == 'Explosión' ? 12.5 : 0;

double calcularDescuento(int cantidad, double importe) {
  if (cantidad < 5) return importe * 0.04;
  if (cantidad < 10) return importe * 0.065;
  if (cantidad < 15) return importe * 0.09;
  return importe * 0.115;
}

int calcularCaramelosObsequio(double importePagar, int cantidad) {
  return importePagar >= 250 ? cantidad * 3 : cantidad * 2;
}
