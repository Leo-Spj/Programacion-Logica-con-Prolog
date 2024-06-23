------------------------------

## Logica de primer orden

estudia las propiedades de las relaciones entre objetos, y las proposiciones que pueden ser construidas a partir de estas relaciones.

### Ejemplo

```prolog
% Reglas
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

% Hechos
padre(juan, maria).
madre(maria, pedro).
```

- predicado
- expresion
- 
- constante -> Marte, Jupiter
- variables -> "esto es antiguo" Antiguos(x) -- A(x) | "es antiguo" es un predicado | "esto" es la variable
            -> "esto es mas grande que aquello" Mas_grande_que(x, y) -- M(x, y)
- cuantificadores -> "para todo" -- "para algun" -- "para ningun"
- conectores logicos (conectivos) -> "y" -- "o" -- "si entonces" -- "si y solo si"
-
- "Marte es el planeta rojo" ... "es un planeta" --- **prediacado** Marte es *una* expresion
- es_un_planeta(marte) -- planeta(marte) ---p(m)
- "Jupiter es mas grande que marte" "es mas grande que" -- predicado
- jupider y marte son **expresiones** --> *relacion* entre entidades 
- es_mas_grande(Jupider, Marte) -- mas_grande(j, m) -- G(j, m)


Universal y existencial son tipos de: cuantificadores

las constante son los objetos que se relacionan entre si, las variables son los objetos que se relacionan con las constantes. 

"socarates es sabio y prudente"
sabio(socarates) & prudente(socarates)
donde:
varaible = socarates
constante = sabio, prudente
predicado = es sabio, es prudente

"si socrates es sabio tambien es prudente"
variable = socarates
constante = sabio, prudente
predicado =  
sabio(socarates) -> prudente(socarates)

"nadie es sabio y ademas  prudente"
variable = nadie
constante = sabio, prudente
predicado = es sabio, es prudente
3x -> cuantificador de nadie (la E invertida)
¬ 3x[ sabio(Y) & prudente(Y) ]

"Todos los sabios son solteros"
cuantificador = todos
varaiable = 
constante = sabio, soltero
* A (la A invertida es "para todo")
Ax(sabio(x) -> soltero(x))


"Cada persona es hombre o mujer"
variable = persona
constante = hombre, mujer
* A (la A invertida es "para todo")
Ax(hombre(x) v mujer(x)) 

"toda persona es menor que su padre"
predicado = es menor que
variable = persona
constante = padre
Ax menor_que(x, padre(x))


---------

varables de individuo

son expresiones cuya referencia no está determinada por el contexto en el que aparecen.

cuantificadores

un cuantificadore es un operador que se aplica a una variable de individuo y que indica la cantidad de individuos que satisfacen una expresion.

conectivas

son operadores que se aplican a proposiciones y que permiten formar proposiciones compuestas a partir de proposiciones simples.

Argumentos 

son expresiones que se utilizan para especificar los valores de las variables de un predicado.