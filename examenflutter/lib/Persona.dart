class Persona {
  String nombre = "";
  int edad = 0;

  //Constructores
  Persona.basico(this.nombre, this.edad);
  //Nombrados
  Persona({required this.nombre, required this.edad});
  //Por defecto
  Persona.defecto() : nombre = "Desconocido", edad = 0;

  factory Persona.fabrica(int edad) {
    if (edad <= 0) {
      throw ArgumentError('La edad debe ser mayor que 0');
    }

    return Persona(nombre: 'Persona con edad $edad', edad: edad);
  }
  //Metodos
  String mostrarInfo(emple) {
    String info;
    info = "Nombre: " + this.nombre + " Edad: " + edad.toString();
    return info;
  }
}
