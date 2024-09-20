void main() {
  //Listas (List)
  // La declaracion de uns LIST esta delimitada por corchetes
  final numeros = [1,2,2,3,4,5,6,7,7,7,8,9,9,10];
    
  print("Ejemplo de LIST de numeros: $numeros");
  print("Confirmamos el tipo de dato para NUMEROS que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta informacion de la lista tal como:");
  print("El tamaño: ${numeros.length}");
  print("""
  Para acceder a los elementos debemos especificar la posicion entre []
  El primer elemento de la primera posicion es: ${numeros[0]}
  El primer elemento en la segunda posicion es ${numeros[1]}, siempre respetand la         posicion -1
  El ultimo elemento de la lista seria: ${numeros[numeros.length-1]}
   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   
   De igual manera existen las siguientes alternativas: 
   Primer elemento ${numeros.first}
   Ultimo elemento ${numeros.last}
   
   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Tambien tendremos acceso a algunos metodos que permiten la transmicion o filtracion      del contenido
   por ejemplo: usar reversed, para invertir el orden original : ${numeros.reversed}
   Es importante observar que la funcion reversed ha transformado a la LIST original y      la retorna como un ITERABLE  

  """);
  
  
  
   // Iterables 
  final numerosAlreves = numeros.reversed;
  print("Los iterables son estructuras de datos que DART y otros lenguajes usan para optimizar en terminos de velocidad el acceso a los datos y propiedades");
  
  print("Ejemplo de u ITERABLE: $numerosAlreves");
  print("Confirmamos el tipo de dato para NUMEROS que es: ${numerosAlreves.runtimeType}");
  print("De igual manera podemos transformar una lista en ITERABLE y viceversa");
  print("Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato ${numerosAlreves.toList().runtimeType}");
    
    
    // Cojunto de datos (SET)
    // Un SET es una estructura de datos usadas por DART para simplificar los elementos eliminando los duplicados
    print(""" veamos que pasa con los conjuntos (SET)
    convertimos el ITERABLE en un SET usando .toSET ${numerosAlreves.toSet()}
    podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita los datos usando {}.
    """);
  
  
  // De igual manera podemos realizar operaciones para el filtro de elementos usando .where()
  final numerosMayoresAS = numeros.where((num){
      return num >5;
  }); 
  
  
  print("""Hemos filtrado sobre LIST solo los elementos que son mayores a 5:
  Resultado del filtro: ${numerosMayoresAS}"""
  );
     
  print("""Eliminamos los duplicados ... ${numerosMayoresAS.toSet()}"""
  );
      
      

}
