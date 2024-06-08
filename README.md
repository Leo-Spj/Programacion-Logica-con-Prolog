# Prolog

## Ejecución

Para ejecutar y reutilizar los codigos prolog.

```bash
swipl -s prueba.pl
```

Otra forma de ejecutarlo es:

```bash
swipl
consult('prueba.pl').
padre(juan, maria).
```
el parametro `-s` es para indicar que archivo se va a ejecutar.


Para salir de la consola de prolog:

```bash
halt.
```

## Comentarios

Para comentar una linea se usa el simbolo `%` y para comentar un bloque de codigo se usa `/*` y `*/`.

```prolog
% Comentario de una linea

/*
Comentario de 
bloque
*/
```

