sumar :: Integer -> Integer -> Integer
sumar x y = x+y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n =n * factorial (n-1)
--public static void main
main :: IO()
main = print(factorial 10)

menu :: IO()
menu = do
    putStrLn("=== MENU ===")
    putStrLn("que desea hacer")
    putStrLn("1)Factorial")
    putStrLn("2)salir")
    opcion <- getLine


    case opcion of 
        "1" -> do
            putStrLn("introduce el numero :")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show(factorial x))
        "2" -> do
            putStrLn("ADIOS")
        _-> do
            putStrLn("Opcion no valida")
            menu
-- cd 2_haskell
--ghci
-- :load funciones.hs