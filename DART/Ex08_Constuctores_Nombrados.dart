

void main() {
  //CASO DE PRUEBA 1 
  final romualdoPerez = Person(
    ID: 1,
    cortesyTitle: "Sr",
    name: 'Romualdo',
    firstLastname: 'Perez',
    secondLastname: 'Romero',
    gender: 'Masculino',
    bloodGroup: 'O-',
    curp: 'PERR030120HMCRMMA0',
    birthdate: DateTime(2003, 1, 20),
    isActive: true,
    createdAt: DateTime(2024, 17, 26, 11, 05, 16),
    //updatedAt: DateTime(2024, 10, 27),
  );

  print(romualdoPerez);

  //CASO DE PRUEBA 2 --  Solo datos obligatorios
  final marthaRomero = Person(
    ID: 150,
    name: 'Martha',
    firstLastname: 'Romero',
    gender: 'Femenino',
    bloodGroup: 'O+',
    birthdate: DateTime(1979, 3, 19)
  );

  print(marthaRomero);
}

class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  Person({
    required this.ID,
    this.cortesyTitle,
    required this.name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
    required this.bloodGroup,
    this.curp,
    required this.birthdate,
    this.isActive = true,
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();

  @override
  String toString(){
    final String formatedDate = "${birthdate.day.toString().padLeft(2, '0')}/"+
      "${birthdate.month.toString().padLeft(2, '0')}/"+
      "${birthdate.year}";

    final String formatedCreatedDate = "${createdAt.day.toString().padLeft(2, '0')}/"
      "${createdAt.month.toString().padLeft(2, '0')}/"
      "${createdAt.year} "
      "${createdAt.hour.toString().padLeft(2, '0')}:"
      "${createdAt.minute.toString().padLeft(2, '0')}:"
      "${createdAt.second.toString().padLeft(2, '0')}";

    curp??= "No Registrado";
    if(curp == "") curp??= "No Registrado";

    String status = "Sin Definir";
    if(isActive)
      status = "Activo";
    else
      status = "inactivo";
    return """
    --------------------------------------------------------------------------------------------------------------
    DATOS DE LA PERSONA
    --------------------------------------------------------------------------------------------------------------
    ID: $ID,
    Nombre: $name $firstLastname $secondLastname,
    Genero: $gender,
    Grupos Sanguineo: $bloodGroup,
    Fecha de Nacimiento: $formatedDate,
    CURP: $curp,
    Estatus: $status,
    Fecha de registro: $formatedCreatedDate
    """;
  }

}