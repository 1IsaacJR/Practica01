--Ejercicio7
{-

E ::=()
E ::=(E)
E ::=EE

Definir una función esFormula tal que la evaluación esFormula e dé
como resultado True si e es una cadena correspondiente a una expresión
que pertenece a la gramática de los paréntesis balanceados.
	  	   
--Contador 1
contador1:: Integer -> Integer
contador1 n = n+1

--Contador 2
contador2:: Integer -> Integer
contador2 n = n-1

--Acceder al primero o al ultimo caracter de un string
accederUltimo, accederPrimero:: String -> Char
accederPrimero s = head s
accederUltimo s = last s

--Ayudantia hint ??
if n == "()" then True
else esFormula(f)
where f = eliminarParentesis n 

esFormula n = if n == f ++ g  && n == esformula(f) && esformula(g) then True else False

buscarCadena:: String -> Integer -> Bool
buscarCadena [] 0 = True
buscarCadena ('(':xs) n =  buscarCadena xs (n+1)
buscarCadena (')':xs) n =  buscarCadena xs (n-1)

-}

--Intentando entender que es lo que esta pasando

eliminarParentesis :: String -> String
eliminarParentesis ('(':xs) = init xs  -- Elimina el primer y el último carácter de la lista (paréntesis)
eliminarParentesis xs = xs  -- Si no hay paréntesis, la cadena se devuelve tal cual

esFormula:: String  -> Bool
esFormula t 
	  | t == "()" = True
	  | t == "" = False
	  |otherwise =  t == eliminarParentesis t

main:: IO()
main = do
     let m = "EE"
     print (esFormula m)
