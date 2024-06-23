# Prolog

## Ejecución

Para ejecutar y probar un archivo de prolog:

```bash
swipl -s archivo.pl
```
-s = source, indica qué archivo se va a ejecutar.


Otra forma de ejecutarlo es:

```bash
swipl
consult('archivo.pl').
padre(juan, maria).
```

Para salir de la consola de prolog:

```bash
halt.
```

## Compilación

Para compilar un archivo de prolog y tenerlo como ejecutable:

```bash
swipl -o archivo -c archivo.pl
```
-o = output, -c = compile


## Comentarios

Para comentar una linea se usa el simbolo `%` y para comentar un bloque de codigo se usa `/*` y `*/`.

```prolog
% Comentario de una linea

/*
Comentario de 
bloque
*/
```

