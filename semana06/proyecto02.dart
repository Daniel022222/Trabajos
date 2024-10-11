//EVALUACIÒN DE EMPLEADOS

import 'dart:io';

void main() {
  stdout.write("Ingrese los minutos de tardanza: ");
  int minutosTardanza = int.parse(stdin.readLineSync()!);
  
  stdout.write("Ingrese el número de observaciones: ");
  int observaciones = int.parse(stdin.readLineSync()!);

  int puntajePuntualidad = calcularPuntajePuntualidad(minutosTardanza);
  int puntajeRendimiento = calcularPuntajeRendimiento(observaciones);
  int puntajeTotal = puntajePuntualidad + puntajeRendimiento;
  double bonificacion = calcularBonificacion(puntajeTotal);

  print("Puntaje por puntualidad: $puntajePuntualidad");
  print("Puntaje por rendimiento: $puntajeRendimiento");
  print("Puntaje total: $puntajeTotal");
  print("Bonificación: S/. $bonificacion");
}

int calcularPuntajePuntualidad(int minutos) {
  if (minutos == 0) return 10;
  if (minutos <= 2) return 8;
  if (minutos <= 5) return 6;
  if (minutos <= 9) return 4;
  return 0;
}

int calcularPuntajeRendimiento(int observaciones) => observaciones == 0 ? 10 :observaciones == 1 ? 8 :observaciones == 2 ? 5 :observaciones == 3 ? 1 : 0;

double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) return puntajeTotal * 2.5;
  if (puntajeTotal < 14) return puntajeTotal * 5.0;
  if (puntajeTotal < 17) return puntajeTotal * 7.5;
  if (puntajeTotal < 20) return puntajeTotal * 10.0;
  return puntajeTotal * 12.5;
}
