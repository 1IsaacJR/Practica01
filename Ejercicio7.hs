--Ejercicio7
f:: Integer -> Bool

esFormula, reccorrido:: String -> Bool -> list[] ->
recorrido n k = if n = 1 then True
	      else recoorido(n)
	      
esFormula n = if n == E then True
	      else false

{-
E(1) = E
Pertenece al alfabeto
E(1) = _
Pertenece al alfabeto
E(1) = EEE
Cualquier composicion pertenece al afabeto
Combinacion de todas las composiciones de las cadenas posibles para culquier alfabeto

-}
