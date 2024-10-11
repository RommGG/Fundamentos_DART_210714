void main() {
  // Caso de Prueba 1
  final andresR = Paciente(
    id: 1,
    nombre: "Andrés",
    pApellido: "Ramirez",
    sApellido: "Lopez",
    genero: "Masculino",
    tSangre: "B+",
    curp: "RALM123456HDFXYZ08",
    fNacimiento: DateTime(1995, 3, 15),
    sVida: true,
    sMedico: "Estable",
    nss: "1234567890",
    tSeguro: "IMSS",
    uFechaCita: DateTime.now(),
    fRegistro: DateTime.now(), 
  );

  print(andresR);

  // Caso de Prueba 2
  final sofiaC = Paciente(
    id: 2,
    nombre: "Sofia",
    pApellido: "Castro",
    sApellido: "Martinez",
    genero: "Femenino",
    tSangre: "O+",
    curp: "CAMS987654MDFXYZ01",
    fNacimiento: DateTime(2000, 4, 22),
    sVida: true,
    sMedico: "Estable",
    nss: "0987654321",
    tSeguro: "ISSSTE",
    uFechaCita: DateTime.now(),
    fRegistro: DateTime.now().subtract(Duration(days: 20)),
  );

  print(sofiaC);

  // Caso de Prueba 3
  final ferH = Paciente(
    id: 3,
    nombre: "Fernando",
    pApellido: "Hernandez",
    sApellido: "Pérez",
    genero: "Masculino",
    tSangre: "AB-",
    curp: "HEPF987654HDFXYZ09",
    fNacimiento: DateTime(1985, 11, 5),
    sVida: true,
    sMedico: "Estable",
    nss: "2345678901",
    tSeguro: "Seguro Popular",
    uFechaCita: DateTime.now(),
    fRegistro: DateTime.now().subtract(Duration(days: 60)),
  );

  // Actualizar el estado a inactivo debido al fallecimiento
  ferH.registrarDefuncion(motivo: "Infarto", hora: DateTime.now());

  print(ferH);
}

// Definición de la Clase Abstracta <Persona>
abstract class Person {
  int id;
  String nombre;
  String pApellido;
  String? sApellido;
  String genero;
  String tSangre;
  String? curp;
  DateTime fNacimiento;
  bool sVida; 
  DateTime fRegistro;
  DateTime? uFechaCita; 

  Person({
    required this.id,
    required this.nombre,
    required this.pApellido,
    this.sApellido,
    required this.genero,
    required this.tSangre,
    this.curp,
    required this.fNacimiento,
    this.sVida = true,
    DateTime? registrationDate,
    this.uFechaCita,
  }) : fRegistro = registrationDate ?? DateTime.now();

  @override
  String toString() {
    String formatBirthDate = "${fNacimiento.day.toString().padLeft(2, '0')}/" +
        "${fNacimiento.month.toString().padLeft(2, '0')}/${fNacimiento.year}";

    String formatRegistrationDate = "${fRegistro.day.toString().padLeft(2, '0')}/" +
        "${fRegistro.month.toString().padLeft(2, '0')}/${fRegistro.year} " +
        "${fRegistro.hour.toString().padLeft(2, '0')}:" +
        "${fRegistro.minute.toString().padLeft(2, '0')}:" +
        "${fRegistro.second.toString().padLeft(2, '0')}";

    curp ??= "No registrado"; // Si no hay CURP
    String statusString = sVida ? "Vivo" : "Finado";

    return """
    
    
    
      ----------------------------------------------------------------------
      Datos de la persona
      ----------------------------------------------------------------------
      ID: $id,
      Nombre: $nombre $pApellido ${sApellido ?? ""}
      Género: $genero
      Grupo sanguíneo: $tSangre
      Fecha de nacimiento: $formatBirthDate
      CURP: $curp
      Estatus: $statusString
      Fecha de registro: $formatRegistrationDate
      ----------------------------------------------------------------------
      """;
  }
}

// Uso de Extends / Implements
class Paciente extends Person {
  String nss;
  String tSeguro; // Tipo de seguro
  String sMedico; // Estado del paciente

  // Atributos relacionados a defunción
  DateTime? horaDefuncion;
  String? motivoDefuncion;

  Paciente({
    required int id,
    required String nombre,
    required String pApellido,
    String? sApellido,
    required String genero,
    required String tSangre,
    String? curp,
    required DateTime fNacimiento,
    required bool sVida,
    DateTime? registrationDate,
    required DateTime? uFechaCita, // Ya no se redefine
    required this.nss,
    required this.tSeguro,
    required String sMedico,
    required DateTime fRegistro,
  }) : this.sMedico = sMedico,
       super(
          id: id,
          nombre: nombre,
          pApellido: pApellido,
          sApellido: sApellido,
          genero: genero,
          tSangre: tSangre,
          curp: curp,
          fNacimiento: fNacimiento,
          sVida: sVida,
          registrationDate: registrationDate,
          uFechaCita: uFechaCita,
        );

  // Registro de defunción
  void registrarDefuncion({required String motivo, required DateTime hora}) {
    if (!sVida) {
      print("Error: El paciente ya está registrado como Finado.");
      return;
    }

    // Actualización del estado
    sVida = false; // Cambia a inactivo
    horaDefuncion = hora;
    motivoDefuncion = motivo;
  }

  // Sobreescritura del método toString() para incluir los detalles del paciente
  @override
  String toString() {
    String result = super.toString() +
        """
      Datos del paciente
      ----------------------------------------------------------------------
      NSS: $nss
      Tipo de seguro: $tSeguro
      Estado médico: $sMedico
      Fecha de la última cita: ${uFechaCita?.day}/${uFechaCita?.month}/${uFechaCita?.year}
      """;

    // Detalles de la defunción
    if (!sVida) {
      result += """
Motivo de defunción: ${motivoDefuncion ?? "No especificado"}
      Hora de defunción: ${horaDefuncion != null ? "${horaDefuncion!.hour}:${horaDefuncion!.minute}" : "No especificada"}
      """;
    }

    result += "----------------------------------------------------------------------\n";
    return result;
  }
}
