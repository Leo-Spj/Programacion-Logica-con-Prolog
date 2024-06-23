# Prolog

## Ejecución

Para ejecutar y probar un archivo de prolog:

```bash
swipl -s prueba.pl
```
el parametro `-s` es para indicar que archivo se va a ejecutar.


Otra forma de ejecutarlo es:

```bash
swipl
consult('prueba.pl').
padre(juan, maria).
```

Para compilar y tenerlo como ejecutable:

```bash
swipl -o prueba -c prueba.pl
```


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

