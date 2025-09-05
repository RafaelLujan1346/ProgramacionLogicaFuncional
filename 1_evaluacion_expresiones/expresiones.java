//     ####---Ejercicios de java---###
        int x=10;
        int b=10;

//Ejercicio 1
//El resultado se imprime antes de aumentar y por eso imprime 10 sin alterar el resultado

System.out.println(x++);
//resultado = 10
//___________________________________________________________________

//Ejercicio 2
//El resultado se incrementa antes de imprimirse y por eso imprime 11 

System.out.println(++x);
//resultado = 11
//______________________________________________________________________

//Ejercicio 3
//Primero se multiplica b con -3 dando -30 despues b vale 11
//despues -3 se hace una division con 10 pero java arroja 0 cuando la division da negativo
//pero como se esta buscando el modulo este igualmente es 0 al ser un decimal y entonces se resta -3
//dando la comparacion de -30 y -3 los cuales son valores diverentes y arroja false

//__________________________________________________________________________

System.out.println(b++ * -3 == -3 % x++);
//resultado = false

//Ejercicio 4
expresion:30 - 10 /= % ++b + 30 % 7 * 2

    double j= 30-10;
        j/=++b + (30%14);
        System.out.println(j);
//primero separo en una variable la resta de 30 y 10 dando 20
//despues ahorro el paso de 7*2 colocando un 14 
//seguido entre parentesis coloco el 30%14 dando como resultado 2
//despues a b se la suma uno al colocar ++ antes dando 11
//a continuacion se suma el 11 y el 2 dando 13
//finalmente la variable j(20) se divide entre 13 y se re asigna el valor de la division el cual es 1.5384615384615385
//resultado = 1.5384615384615385

//____________________________________________________________________________

//Ejercicio 5
//El resultado se imprime antes de aumentar y por eso imprime 10 sin alterar el resultado

x =  -50 * x++ * 80 % b / 4 *=8

double j=0;
        double k=4;
        j=(x=-50 * x++ *80);
        j=(j %b /(k*=8) );
        System.out.println(j);
//primero coloco 4 en una variable k
//recorto la expresion -50 * x++ * 80 colocandola en j dando -40000
//despues coloco el j %b dando como resultado 0 ya que no queda ningun residuo
//k se multiplica con 8 dando 32
//finalmente se divide 0 / 32 y da 0
//resultado = 0
//___________________________________________________________________

//Ejercicio 6
//El resultado se imprime antes de aumentar y por eso imprime 10 sin alterar el resultado

System.out.println(b*= x++ - 8 + 3 - 5 / 4 % - 3 + 8);

//primero se divide -5 con 4 dando -1
//despues se busca el residuo de -1/-3 que es -1
//despues se le suma 8 dando 7
//despues se le suma 3 dando 10
//despues se le resta -8 dando 2
//despues el 2 se suma al x++(10) dando 12
//despues se multiplica el b(10) con el 12 dando 120
//resultado = 120
//___________________________________________________________________

//Ejercicio 7
//El resultado se imprime antes de aumentar y por eso imprime 10 sin alterar el resultado
expresion:x = b * = 50 / 30 * ++x + 80


int x= 10;
        int b =10;
        int j=(b*=(50/30)* ++x + 80);
        x = j;
       // System.out.println(x = b * = 50 / 30 * ++x + 80);
       System.out.println(x);

//Primero se divide el 50 / 30 y java lo redondea a 1 (sin decimales)
//despues se multiplica el 1 anteriosr con 11 que es el resultado de ++x dando 11
//despues se suma 11 + 80 dando 91
//despues se multiplica y se iguala b que es equivalente a b = (10*91) lo que da 910
//todo lo anterior se guardo en la variable j asi que para el ultimo paso igualamos x con j adquiriendo el mismo valor
//resultado = 910
//___________________________________________________________________



//Ejercicio 8
//++x % 20.2 == -x /= b % = --x
        int x = 10;
        int b = 10;
        int tempX = x;
        double j = ++x % 20.2;      // x=11, j=11.0

        x = tempX;                     // reset x=10
        b %= --x;                      // x=9, b=1  
        double k = -x / (double)b; // right=-9.0

        if(j == k) {
            System.out.println("verdadero");
        } else {
        System.out.println("false");  // Esto se ejecutará
        }
        //creo 3 variables una j para almacenar las operaciones del lado izquierdo y una j para almacenar las operaciones del lado derecho y otra que funciona como una x temporal para que el incremento o decremento no afecte a las distintas operaciones
        //en la variable j se evalua la primera expresion, primero se incrementa x con ++x subiendo a 11 despues se saca el modulo de dividir 11 / 20.2 dejando 11 como resultado en j
        //despues la variable temX se ustituye a x para que vuelva a su valor original
        //despues se raliza un modulo entre b(10) y --x (9) dejando 1 como resultado que se guarda en b
        //despues en la variable k se usa -x (-9 ya que se redujo anteriormente y asi se guardo) que se divide entre b (1) dando -9 que es k
        //finalmente se compara j y k en un if y al ser valores distintos da false como resultado
        //respuesta = false
        //___________________________________________________________________

//Ejercicio 9
//1 *= b++ * b-- / 3 % ++b *= 10 + 1;

        int resultado = 1 * (b++ * b-- / 3 % ++b * (10 + 1));
        System.out.println(resultado);

//primero coloque una variable antes de la izquierda con el nombre resultado para que  1*= se pueda ejecutar el cual simplifique colocando en 
//parentesis el resto de la expresion, despues se suma el 10 con el 1 dando 11       
//despues se multiplica el 10 (b++ de la izquierda) con 11 (b-- que esta seguido) dando 110
// despues se hace una division entre 110 y 3 dando 36 ya que llava le corta el decimal despues ee hace el residuo de 36 y 11(++b que aumenta antes de usarse)
//dando como resultado 3 al final se multiplica el 3 con el 11 (el del paso 2) dando 33 que se multiplica con uno dando como resultado 33
//Respuesta 33
 //___________________________________________________________________

//ejercicio 10
//expresion -10 * -0 *= -10 *=x++ + x+=x*x ;

        int j = -10 * -0;    // j = 0 agregue una variable j que ayude con las asignaciones y a la vez esta linea da como resultado 0
        j *= -10;            // j = 0 aqui j vuelve a ser 0 ya que es (0*-10 =0)
        j *= x++;            // j = 0 * 10 = 0, luego x = 11 aqui se vuelve a multiplicar 0 con 10 de x que sube a 11 despues
        x += x * x;          // x = 11 + (11 * 11) = 132 aqui x se multiplica por si mismo y como su valor antes subio a 11 da 132 y se reasigna
        j += x;              // j = 0 + 132 = 132 aqui se suma x con j y se reasigna a j dando como resultado 132 
        

//Respuesta: 132
    
