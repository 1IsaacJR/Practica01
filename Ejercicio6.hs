--Ejercicio6
--Funcion con Restriccion de Dominio meidiante Patrones
{-Compara casos para 1, 2, 0 y un numero que su residuo no sea 0, como es un poco restringido solo tomamos impares-}

primoPatrones:: Integer -> Bool 
primoPatrones 2 = True
primoPatrones 1 = False
primoPatrones 0 = False
primoPatrones odd  = True

--Funcion con Restriccion de Dominio mediante Guardas
{-Compara casos para 1, 2 y un numero que su residuo no sea 0, como es un poco restringido solo tomamos impares positivos-}
primoGuardas:: Integer -> Bool
primoGuardas n
      | n <= 1 	      		= False
      | n == 2 			= True	
      | n `mod` 2  == 0		= False
      | n `mod` 2  /= 0    	= True

--Funcion para comparar las dos funciones definidas anteriormente

primoComparacion:: Integer -> Bool
primoComparacion n = if primoGuardas(n) ==  primoPatrones(n) then True else False


--Main de ejecucion
main:: IO()
main = do
--Definimos los mismos valores para las dos funciones
     let n = 5
     let m = 5
     print(primoGuardas n)
     print(primoPatrones m)
     print(primoComparacion n)