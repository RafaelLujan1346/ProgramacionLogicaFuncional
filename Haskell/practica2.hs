-- Función para el promedio de 4 números
promedio4 :: Double -> Double -> Double -> Double -> Double
promedio4 a b c d = (a + b + c + d) / 4

-- Función para sumar monedas
sumaMonedas :: Int -> Int -> Int -> Int -> Int
sumaMonedas a b c d = a*1 + b*5 + c*10 + d*50

-- Volumen de una esfera
volumenEsfera :: Double -> Double
volumenEsfera r = (4/3) * pi * r^3

-- Verificar si tres números son iguales
sonIguales :: (Eq a) => a -> a -> a -> Bool
sonIguales a b c = (a == b) && (b == c)

-- Verificar si tres números son diferentes
sonDiferentes :: (Eq a) => a -> a -> a -> Bool
sonDiferentes a b c = (a /= b) && (b /= c) && (a /= c)

-- Precio final con descuento
precioFinal :: Double -> Double
precioFinal x
    | x >= 1000 = x * 0.6
    | x >= 500  = x * 0.7
    | x >= 100  = x * 0.9
    | otherwise = x

-- Última cifra de un número
ultimaCifra :: Integer -> Integer
ultimaCifra n = abs n `mod` 10

menu :: IO()
menu = do
    putStrLn "--------Menu--------"
    putStrLn "Seleccione una opcion"
    putStrLn "1) Sumar 4 numeros y sacar el promedio"
    putStrLn "2) Sume monedas donde a=1 b=5 c=10 d=50"
    putStrLn "3) Calcular el volumen de una esfera"
    putStrLn "4) Compara a, b y c para saber si son iguales"
    putStrLn "5) Compara a, b y c para saber si son diferentes"
    putStrLn "6) Precio final con descuento, 100 es 10%, 500 es 30% y 1000 es 40%"
    putStrLn "7) Devuelve la ultima cifra de un numero"
    opcion <- getLine

    case opcion of
        "1" -> do
            putStrLn "Inserte el primer numero:"
            n1 <- getLine
            putStrLn "Inserte el segundo numero:"
            n2 <- getLine
            putStrLn "Inserte el tercer numero:"
            n3 <- getLine
            putStrLn "Inserte el cuarto numero:"
            n4 <- getLine
            let a = read n1 :: Double
            let b = read n2 :: Double
            let c = read n3 :: Double
            let d = read n4 :: Double
            putStrLn ("El promedio es: " ++ show (promedio4 a b c d))
            menu
        "2" -> do
            putStrLn "Cantidad de monedas de $1:"
            a <- getLine
            putStrLn "Cantidad de monedas de $5:"
            b <- getLine
            putStrLn "Cantidad de monedas de $10:"
            c <- getLine
            putStrLn "Cantidad de monedas de $50:"
            d <- getLine
            let r = sumaMonedas (read a) (read b) (read c) (read d)
            putStrLn ("El total es: $" ++ show r ++ ".00")
            menu
        "3" -> do
            putStrLn "Inserte el radio de la esfera:"
            r <- getLine
            let radio = read r :: Double
            putStrLn ("El volumen es: " ++ show (volumenEsfera radio))
            menu
        "4" -> do
            putStrLn "Inserte el primer numero:"
            n1 <- getLine
            putStrLn "Inserte el segundo numero:"
            n2 <- getLine
            putStrLn "Inserte el tercer numero:"
            n3 <- getLine
            let a = read n1 :: Integer
            let b = read n2 :: Integer
            let c = read n3 :: Integer
            putStrLn ("¿Son iguales? " ++ show (sonIguales a b c))
            menu
        "5" -> do
            putStrLn "Inserte el primer numero:"
            n1 <- getLine
            putStrLn "Inserte el segundo numero:"
            n2 <- getLine
            putStrLn "Inserte el tercer numero:"
            n3 <- getLine
            let a = read n1 :: Integer
            let b = read n2 :: Integer
            let c = read n3 :: Integer
            putStrLn ("¿Son diferentes? " ++ show (sonDiferentes a b c))
            menu
        "6" -> do
            putStrLn "Inserte el total de la compra:"
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn ("El precio final es: $" ++ show (precioFinal x))
            menu
        "7" -> do
            putStrLn "Inserte un numero:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("La ultima cifra es: " ++ show (ultimaCifra x))
            menu
        _ -> do
            putStrLn "Opcion no valida"
            menu

