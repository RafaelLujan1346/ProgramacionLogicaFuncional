absoluto :: Integer -> Integer
absoluto x = abs x

ceilingFun :: Double -> Integer
ceilingFun x = ceiling x

funSucc :: Integer -> Integer
funSucc x = succ x

minim :: Integer -> Integer -> Integer
minim x y = min x y

maxim :: Integer -> Integer -> Integer
maxim x y = max x y

divFun :: Integer -> Integer -> Integer
divFun x y = div x y    

modFun :: Integer -> Integer -> Integer
modFun x y = mod x y    

evenFun :: Integer -> Bool
evenFun x = even x

floorFun :: Double -> Integer
floorFun x = floor x    

gcdFun :: Integer -> Integer -> Integer
gcdFun x y = gcd x y    

notFun :: Bool -> Bool
notFun z = not z    

oddFun :: Integer -> Bool
oddFun x = odd x    

signumFun :: Integer -> Integer
signumFun x = signum x  

sndFun :: (a,b) -> b
sndFun (x,y) = snd (x,y)    

menu :: IO()
menu = do
    putStrLn("--------Menu--------")
    putStrLn("Seleccione una opcion")
    putStrLn("1) Absoluto")
    putStrLn("2) ceiling")
    putStrLn("3) succ")
    putStrLn("4) min")
    putStrLn("5) max")
    putStrLn("6) div")
    putStrLn("7) mod")
    putStrLn("8) even")
    putStrLn("9) floor")
    putStrLn("10) gcd")
    putStrLn("11) not")
    putStrLn("12) odd")
    putStrLn("13) signum")
    putStrLn("14) snd")
    opcion <- getLine

    case opcion of
        "1"-> do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El valor absoluto es: " ++ show(absoluto x))
        "2"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("Valor redondeado: " ++ show(ceilingFun x))
        "3"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Valor siguiente: " ++ show(funSucc x ))
        "4"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            putStrLn("Inserte otro numero: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("el menor es: " ++ show(minim x y))
        "5"-> do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            putStrLn("Inserte otro numero: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("el mayor es: " ++ show(maxim x y))
        "6"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            putStrLn("Inserte otro numero: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("Resultado de la division: " ++ show(divFun x y))
        "7"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            putStrLn("Inserte otro numero: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El modulo es: " ++ show(modFun x y))
        "8"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn(  show(evenFun x))
        "9"-> do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("Resultado: " ++ show(floorFun x))
        "10"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            putStrLn("Inserte otro numero: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El maximo comun divisor es: " ++ show(gcdFun x y))
        "11"->do
            putStrLn("Inserte un verdadero o falso: ")
            n1 <- getLine
            let z = read n1 :: Bool
            putStrLn("El opuesto es: " ++ show(notFun z))
        "12"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn( show(oddFun x))
        "13"-> do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn(show(signumFun x))
        "14"->do
            putStrLn("Inserte un numero: ")
            n1 <- getLine
            putStrLn("Inserte otro numero: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("el valor de Y es: " ++ show(sndFun (x,y)))
        _->do
            putStrLn("Opcion no valida")
            menu
          