/*El ejército nacional ha decidido hacer una jornada de ventas de libretas militares para 
muchos hombres que no han definido su situación militar u otros que no son aptos para 
prestar el servicio.
Además de la edad de joven, se tendrá en cuenta el nivel del sistema de beneficio de la 
persona. Para todos los hombres mayores de 18 años la libreta tendrá un costo de S/. 
350, pero para aquellos que tengan nivel 1 se les hará un descuento del 40%; para los de 
nivel 2, el descuento será del 30%; para nivel 3 del 15%; y para los demás estratos o 
niveles no habrá descuento. 
Para los jóvenes con los 18 años la libreta tiene un costo de S/. 200 y los jóvenes con 
nivel del sistema de beneficio 1, tendrán un descuento del 60%; para los de nivel 2,descuento del 40%; para los del 3, un descuento del 20% y para los demás estratos no 
habrá descuento. 
Realizar una aplicación que tome la edad y el nivel del sistema de beneficio de un hombre 
y nos muestre descuento que le hacen y su valor final a pagar.*/
import 'dart:io';
void main(){

  int precio1 = 350;
  int precio2 = 200;

  var precio;

  print("Ingrese su edad");
  String? edadIngresada = stdin.readLineSync();

  int edad = int.parse(edadIngresada!);

  print("Ingrese su Nivel <1 - 2 - 3 >");
  String? nivelIngresado = stdin.readLineSync();

  switch(nivelIngresado){
    case "1":
      if(edad > 18){
        precio = precio1 - (precio1 * 0.4);
        print('El precio aplicando el 40% de descuento es de $precio');
      }else{
        precio = precio2 - (precio2 * 0.6);
        print('El precio aplicando el 60% de descuento es de $precio');
      }
      break;
      case "2":
      if(edad > 18){
        precio = precio1 - (precio1 * 0.3);
        print('El precio aplicando el 30% de descuento es de $precio');
      }else{
        precio = precio2 - (precio2 * 0.4);
        print('El precio aplicando el 40% de descuento es de $precio');
      }
      break;
      case "3":
      if(edad > 18){
        precio = precio1 - (precio1 * 0.15);
        print('El precio aplicando el 15% de descuento es de $precio');
      }else{
        precio = precio2 - (precio2 * 0.2);
        print('El precio aplicando el 20% de descuento es de $precio');
      }
      break;
      default:
        if(edad == 18){
          print('El precio es de $precio2');
        }else{
          print('El precio es de $precio1');
        }

  }

}