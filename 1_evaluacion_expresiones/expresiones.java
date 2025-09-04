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