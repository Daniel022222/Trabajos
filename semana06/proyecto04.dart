//TIENDA DE PRODUCTOS

import 'dart:io';

void main() {
  stdout.write("Ingrese el tipo de producto (P1, P2, P3): ");
  String producto = stdin.readLineSync()!;
  
  stdout.write("Ingrese la cantidad de unidades: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  double precioUnitario = obtenerPrecioProducto(producto);
  double importePagar = precioUnitario * cantidad;
  String regalo = determinarRegalo(cantidad);

  print("Importe a pagar: S/. $importePagar");
  print("Regalo: $regalo");
}

double obtenerPrecioProducto(String producto) => 
  producto == 'P1' ? 15.0 :
  producto == 'P2' ? 17.5 :
  producto == 'P3' ? 20.0 : 0;

String determinarRegalo(int cantidad) {
  if (cantidad < 26) return "Un lapicero";
  if (cantidad <= 50) return "Un cuaderno";
  return "Una agenda";
}
