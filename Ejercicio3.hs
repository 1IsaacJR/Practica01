{-

next :: Float -> Float -> Float
next n x = (x + n / x) / 2
-}

import GHC.Float

--Ejercicio3
--Funcion Factorial
fact:: Integer -> Integer
fact x = if x == 0 then 1
       	 else x *fact(x-1)
	 
--Funcion de combinatoria	 
comb:: Integer -> Integer -> Double
comb n k = if k > n then 0
       	   else fromIntegral (fact(n)) / (fromIntegral (fact(k))* fromIntegral (fact(n - k)))

--Main de ejecucion
main :: IO()
main = do
     putStrLn("There is the fuction fact: ")
     let n = 4
     let k = 10
     print(comb n k)

{-
//Ejercicio1
//Ejercicio2



//Ejercicio4
factEquivalencia:: Integer -> fact(Integer) -> Bool


//Ejercicio5
anterior:: Integer -> Integer
anterior n
	 | n-1 <= 0  = 1
	 | otherwise = n-1
	 
//Ejercicio6

primo:: Integer -> Bool 
primo n = if n%2 == 0 then false
      	  else True


primo:: Integer -> Bool
primo n
      | n%2 == 0   = false
      | n%2 != 0   = True



//Ejercicio7
f:: Integer -> Bool

esFormula, reccorrido:: String -> Bool -> list[] ->
recorrido n k = if n = 1 then True
	      else recoorido(n)
esFormula n = if n == E then True
	      else false
-}	
