--Función que compruebe que las diferentes versiones de la función factorial

factEquivalencia:: Integer -> Bool
factEquivalencia n = if fact1 n == fact2 n && fact1 n == fact3 n && fact1 n == fact4 n && fact1 n == fact5 n && fact1 n == fact6 n && fact1 n == fact7 n then True else False

--Funciones en factorial vistas en clase
fact1:: Integer -> Integer
fact1 n = if n == 0 then 1
      	       	    else n * fact1 (n-1)

fact2:: Integer -> Integer
fact2 n
      |	n == 0		= 1
      | otherwise = n * fact2 (n-1)

fact3:: Integer -> Integer
fact3 0 = 1
fact3 n = n * fact3 (n-1)

fact4:: Integer -> Integer
fact4 n
      |	n == 0		= 1
      | n >= 1 		= n  * fact4 (n-1)

-- Cambio de funcion 5 para compilacion
fact5 :: Integer -> Integer
fact5 0 = 1
fact5 n  = n * fact5 (n - 1)

fact6:: Integer -> Integer
fact6 n = product[1..n]

fact7:: Integer -> Integer
fact7 n = foldr (*) 1 [1..n]

--Main de ejecucion
main:: IO()
main = do
     let x = 4
     print(factEquivalencia x) 