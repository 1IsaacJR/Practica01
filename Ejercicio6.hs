--Ejercicio6
--Restriccion de Dominio meidiante Patrones
{-
--Falta completar

primoPatrones:: Integer -> Bool 
primoPatrones n `mod` 2 ==    = False
primoPatrones n `mod` 2 ==    = True

-}

--Restriccion de Dominio mediante Guardas
primoGuardas:: Integer -> Bool
primoGuardas n
      | n `mod` 2  == 0    = False
      | n `mod` 2  /= 0    = True

--Falta metodo para comparar las dos funciones

main = do
     let n = 10
     print(primoGuardas n)
