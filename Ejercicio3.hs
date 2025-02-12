--Ejercicio3

{-
Definimos una funcion recursiva de un factorial
-}

--Funcion Factorial
fact:: Integer -> Integer
fact x = if x == 0 then 1
       	 else x *fact(x-1)
	 
--Funcion de combinatoria	 

{-
Con la ayuda de la funcion recursiva hacemos una funcion binomial, tomando dos valores enteros y regresando un double,
Comparamos casos para cuando el entero k sea mayor a n dado que en ese caso es 0
-}

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

