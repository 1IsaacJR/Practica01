--Ejercicio5
-- Tipo de dato para respuesta de entero y de cadena
data Respuesta = Respuesta{entero :: Integer, cadena :: IO()}

--Funcion mediante Guardas
anteriorGuardas:: Integer -> Integer
anteriorGuardas n 
	 | (n - 1) < 0 = 0
	 | otherwise = n-1
	 
--Funcion mediante Patrones
anteriorPatrones:: Integer -> Integer
anteriorPatrones 0 = 0
anteriorPatrones n = n - 1

--Comparar si es menor que 0
menorQueCero:: Integer -> Bool
menorQueCero n = if n < 0 then True else False

--Comparacion de funciones
anterior :: Integer  -> Bool
anterior n
  | anteriorPatrones n == anteriorGuardas n = True
  | otherwise = False


--Main de ejecucion
main :: IO()
main = do
     let n = 0
     print (anteriorGuardas n)
     print (anteriorPatrones n)
     print (anterior n)
     