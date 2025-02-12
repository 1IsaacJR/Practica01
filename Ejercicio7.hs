--Ejercicio7
--Contador 1 para saber si existen parentesis abiertos '(' sumamos el contador
contador1:: Integer -> Integer
contador1 n = n+1

--Contador 2 para saber si existen parentesis cerrados ')' restamos el contador
contador2:: Integer -> Integer
contador2 n = n-1

--Función que verifica si existe la misma cantidad de parentesis abiertos  que cerrados
buscarParentesis :: String -> Integer -> Bool
buscarParentesis [] 0 = True
--Utilizamos un patron comodin para no especificar el valor en este caso del contador sea negativo o positivo
buscarParentesis [] _ = False
--Utilizamos listas para verificar los parentesis
buscarParentesis ('(':xs) n = buscarParentesis xs (contador1 n)
buscarParentesis (')':xs) n
    | n > 0 = buscarParentesis xs (contador2 n)
    | otherwise = False


-- Función que verifica si la cadena de paréntesis es válida
esFormula :: String -> Bool
esFormula t
--Vemos que cumpla el caso base para cuando E::= ()
    | t == "()" = True 
    | t == "" = False
--Vemos el caso cuando la cadea dentro de la gramatica se encuentra repetida E::= EE
--Vemos el caso cuando la cadena se encuenta entre parentesis E::=(E)
    | otherwise = buscarParentesis t 0  

-- Funcion Main de ejecucion
main :: IO ()
main = do
    --let m = ""
    let p = "()"
    let o = "(hola)"
    let y = "holahola"
    --print (esFormula m)
    print (esFormula p)
    print (esFormula o)
    print (esFormula y)


