void main() {
  var myName = 'Roluamndo';
  String myLastName = 'Perez';
  final int myDNI = 210714;
  late final int myAge;

  
  myName = "Romualdo";
  //myDNI = 210520; 
  //No se puede sobreescribir el valor de la variable porque esta definida como final 
  
  
  print("Hola $myName $myLastName tu matricula es $myDNI y tu edad no la conozvo porque no se cuando naciste"); //Interpolacion el valor de las variables con metodos de manipulacion o transformacion
  
  print('\nHola, ${myName.toUpperCase()}, tu matricula es: $myDNI y tu edad no la conozco porque no se       cuando naciste');
}














