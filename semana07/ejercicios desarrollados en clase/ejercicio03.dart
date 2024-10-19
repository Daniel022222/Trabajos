import 'dart:io';

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  void mostrarInformacion() {
    print('Código : $codigo');
    print('Nombres : $nombres');
    print('Nota 1 : $nota1');
    print('Nota 2 : $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

void main() {
  List<Estudiante> listaEstudiante = ingresarEstudiantes();
  mostrarEstudiantes(listaEstudiante);
}

List<Estudiante> ingresarEstudiantes() {
  List<Estudiante> listaEstudiante = [];
  String continuar = 'S';

  while (continuar.toUpperCase() == 'S') {
    stdout.write('Ingrese el código del estudiante: ');
    String codigo = stdin.readLineSync()!;
    
    stdout.write('Ingrese los nombres del estudiante: ');
    String nombres = stdin.readLineSync()!;
    
    stdout.write('Ingrese la primera nota del estudiante: ');
    double nota1 = double.parse(stdin.readLineSync()!);
    
    stdout.write('Ingrese la segunda nota del estudiante: ');
    double nota2 = double.parse(stdin.readLineSync()!);

    listaEstudiante.add(Estudiante(codigo, nombres, nota1, nota2));

    stdout.write('¿Desea ingresar otro estudiante? (S/N): ');
    continuar = stdin.readLineSync()!;
  }

  return listaEstudiante;
}

void mostrarEstudiantes(List<Estudiante> listaEstudiante) {
  for (var estudiante in listaEstudiante) {
    estudiante.mostrarInformacion();
    print('---');
  }
}