/*En una universidad, los alumnos están categorizados en cuatro categorías. A cada 
categoría le corresponde una pensión mensual distinta dada en la siguiente tabla:
Categoría Pensión
A S/. 550
B S/. 500
C S/. 460
D S/. 400
Semestralmente, la universidad efectúa rebajas en las pensiones de sus estudiantes a 
partir del segundo ciclo en base al promedio ponderado del ciclo anterior en porcentajes 
dados en la tabla siguiente:
Nota Promedio Promedio Descuento
0 a 13.99 No hay descuento
14.00 a 15.99 10 %
16.00 a 17.99 12 %
18.00 a 20.00 15 %
Implemente una aplicación utilizando lenguaje Dart que determine cuánto de rebaja 
recibirá un estudiante sobre su pensión actual y a cuánto asciende su nueva pensión.*/
import 'dart:io';
void main() {
  double Categoria_A = 550;
  double Categoria_B = 500;
  double Categoria_C = 460;
  double Categoria_D = 400;
  var pension;
  print("Ingrese su calificacion");
  String? notaIngresada = stdin.readLineSync();
  double calificacion = double.parse(notaIngresada!);
  print("Ingrese su cateoria <A - B - C - D>");
  String? categoriaIngresada = stdin.readLineSync();

  switch(categoriaIngresada){
    case "A":
      if(calificacion<14){
        print('Su pension es: $Categoria_A');
      }else if(calificacion<16){
        pension = Categoria_A - (Categoria_A * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_A - (Categoria_A * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_A - (Categoria_A * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
    case "B":
      if(calificacion<14){
        print('Su pension es: $Categoria_B');
      }else if(calificacion<16){
        pension = Categoria_B - (Categoria_B * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_B - (Categoria_B * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_B - (Categoria_B * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
    case "C":
      if(calificacion<14){
        print('Su pension es: $Categoria_C');
      }else if(calificacion<16){
        pension = Categoria_C - (Categoria_C * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_C - (Categoria_C * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_C - (Categoria_C * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
    case "D":
      if(calificacion<14){
        print('Su pension es: $Categoria_D');
      }else if(calificacion<16){
        pension = Categoria_D - (Categoria_D * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_D - (Categoria_D * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_D - (Categoria_D * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
  }

}

