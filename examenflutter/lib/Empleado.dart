import 'Persona.dart';

class Empleado extends Persona {
  //Atributos
  String puesto;
  double salario;

  //Constructor con super para el nombre y edad
  Empleado(String nombre, int edad, this.puesto, this.salario)
    : super(nombre: nombre, edad: edad);

  //Metodos
  void mostrarDetalles() {
    print('Puesto: $puesto, Salario: \$${salario.toStringAsFixed(2)}');
  }

  @override
  String mostrarInfo(emple) {
    String info;
    info =
        super.mostrarInfo(emple) +
        " Puesto:" +
        this.puesto +
        " Salario: " +
        this.salario.toString();
    return info;
  }

  String tipoSalario() {
    String tipoSalario = "no definido";
    if (salario > 1700) {
      tipoSalario = "alto";
    } else {
      if (salario < 1700 && salario > 1200) {
        tipoSalario = "medio";
      } else {
        tipoSalario = "bajo";
      }
    }
    return tipoSalario;
  }
}
