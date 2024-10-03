
/*Los cálculos salariales de los vendedores de una empresa se calculan de la siguiente 
manera: 
* Sueldo básico: S/.600 
* Comisión: 7% del importe total vendido si es que el importe total vendido es 
mayor a S/.15000; en caso contrario, 5% del importe total vendido 
* Bonificación: S/.25 por cada hijo si es que el número de hijos es menor a 5; en 
caso contrario, S/.22 por cada hijo 
* Sueldo bruto: La suma del sueldo básico, más la comisión y más la bonificación 
* Descuento: 15% del sueldo bruto si es que el sueldo bruto es mayor que S/.3500; 
en caso contrario, 11% del sueldo bruto 
* Sueldo neto: La resta del sueldo bruto menos el descuento 
Dado el importe total vendido y el número de hijos de un vendedor, diseñe un programa 
que determine el sueldo básico, la comisión, la bonificación, el sueldo bruto, el descuento 
y el sueldo neto.*/
import 'dart:io';
void main(){

  double sueldoBasico = 600;
  var comision;
  var bonificacion;
  double sueldoBruto;
  var descuento;
  var sueldoNeto;

  print("Ingrese La cantidad de hijos que tiene");
  String? hijosIngresados = stdin.readLineSync();

  int hijos = int.parse(hijosIngresados!);

  print("Ingrese el total vendido S/. x.00");
  String? totalVendidoIngresado = stdin.readLineSync();
  double totalVendido = double.parse(totalVendidoIngresado!);

  if(hijos<5){
    if(totalVendido > 15000){
      comision = 15000 * 0.07;
      bonificacion = hijos * 25;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
    sueldoNeto = sueldoBruto - descuento;
    print('El Total vendido es: $totalVendido');
    print('La Comisión es: $comision');
    print('El sueldo bruto es: $sueldoBruto');
    print('El Descuento es: $descuento');
    print('El Sueldo Neto es: $sueldoNeto');
    }else{
      comision = 15000 * 0.05;
      bonificacion = hijos * 25;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
      sueldoNeto = sueldoBruto - descuento;
      print('El Total vendido es: $totalVendido');
      print('La Comisión es: $comision');
      print('El sueldo bruto es: $sueldoBruto');
      print('El Descuento es: $descuento');
      print('El Sueldo Neto es: $sueldoNeto');
    }
  }else{
    if(totalVendido > 15000 ){
      comision = 15000 * 0.07;
      bonificacion = hijos * 20;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
      sueldoNeto = sueldoBruto - descuento;
      print('El Total vendido es: $totalVendido');
      print('La Comisión es: $comision');
      print('El sueldo bruto es: $sueldoBruto');
      print('El Descuento es: $descuento');
      print('El Sueldo Neto es: $sueldoNeto');
    }else{
      comision = 15000 * 0.05;
      bonificacion = hijos * 20;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
      sueldoNeto = sueldoBruto - descuento;
      print('El Total vendido es: $totalVendido');
      print('La Comisión es: $comision');
      print('El sueldo bruto es: $sueldoBruto');
      print('El Descuento es: $descuento');
      print('El Sueldo Neto es: $sueldoNeto');
    }
  }

}