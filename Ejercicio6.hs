--Ejercicio6
--Restriccion de Dominio meidiante Patrones
{-
primoPatrones:: Integer -> Bool 
primoPatrones `mod` 2 =  False
primoPatrones > 1 =  True
-}

--Restriccion de Dominio mediante Guardas
primoGuardas:: Integer -> Bool
primoGuardas n
      | n <= 1 	      		= False
      | n == 2 			= True	
      | n `mod` 2  == 0		= False
      | n `mod` 2  /= 0    	= True

--Falta metodo para comparar las dos funciones
{-
primoComparacion:: (primoPatrones a, primoGuardas a) -> Bool
primoComparacion n = if primoGuardas(n) ==  primoPatrones(n) then True else False
-}

main = do
     let n = -1
     --let m = 10
     print(primoGuardas n)
     --print(primoPatrones m)