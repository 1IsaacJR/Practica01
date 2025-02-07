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

