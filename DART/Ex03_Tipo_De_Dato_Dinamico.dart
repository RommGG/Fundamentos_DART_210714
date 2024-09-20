void main() {
  // Practica 05: Tipo de dato dinamico (Dynamic - Comodin)
  
  
  // dynamic == null
  dynamic errorMessage  = 'Hola';
 
  print(""" El valor inicial de errorMessage es: : $errorMessage
  Que por defecto permite establecer valores nulos  """);
  
  
  // Ahora le asignamos un valor String
  errorMessage = "El usuario y la contraseña no coincide";
  
  
  print("""-------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  En este caso fue asignado un String """);
  
  
  // Pero al ser dinamico le podemos asignar un entero
  errorMessage = 404;
  
  
  print("""-------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  En este caso fue asignado un Int """);
  
  
  errorMessage = false;
    
  print("""-------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
 Cuando el sistema no funciona correctamente el mensaje de error puede ser Falso """);
 
  
  errorMessage = [400,404,500,502,505];
    
  print("""-------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
  En caso de que el sistema detecte varios errores, puede agregarlos a una lista """);
  
  
  
  
    errorMessage = {125,"Usuario no encontrado",true,-1025.16, "A"};
    
  print("""-------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
 O incluso un conjunto (SET) de datos """);
  
  
  
    errorMessage = ()=>true;
    
  print("""-------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage
 que en este caso es el resultado de una funcion """);
  
  
  
  
}