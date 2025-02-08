--Ejercicio6
--Restriccion de Dominio meidiante Patrones

--Falta complatar funcion de patrones
primoPatrones:: Integer -> Bool 
primoPatrones 2 = False
primoPatrones 0 = False
primoPatrones odd  = True

--Restriccion de Dominio mediante Guardas
primoGuardas:: Integer -> Bool
primoGuardas n
      | n <= 1 	      		= False
      | n == 2 			= True	
      | n `mod` 2  == 0		= False
      | n `mod` 2  /= 0    	= True


--Funcion para comparar las dos funciones
primoComparacion:: Integer -> Bool
primoComparacion n = if primoGuardas(n) ==  primoPatrones(n) then True else False

main = do
     let n = 5
     let m = 5
     print(primoGuardas n)
     print(primoPatrones m)
     print(primoComparacion n)