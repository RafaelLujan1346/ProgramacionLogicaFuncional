import System.Random (randomRIO)

puntoAleatorio :: IO (Double, Double)
puntoAleatorio = do
    x <- randomRIO (-1.0, 1.0)
    y <- randomRIO (-1.0, 1.0)
    return (x, y)

dentroCirculo :: (Double, Double) -> Bool
dentroCirculo (x, y) = x^2 + y^2 <= 1.0

calculaPi :: Int -> IO Double
calculaPi n = do
    puntos <- mapM (\_ -> puntoAleatorio) [1..n]
    let dentro = length (filter dentroCirculo puntos)
    return (4.0 * fromIntegral dentro / fromIntegral n)

main :: IO ()
main = do
    putStrLn "Ingrese el número de dardos:"
    n <- readLn
    piAproximado <- calculaPi n
    putStrLn ("Pi vale: " ++ show piAproximado)