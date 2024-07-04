
Diagramas por profundidad

```mermaid
graph TD
    subgraph Primera_Generacion
    Maria
    Jose
    end

    subgraph Segunda_Generacion
    Jorge
    Sara
    Luis
    Pedro
    end

    subgraph Tercera_Generacion
    Mario
    Rosa
    Isabel
    Hilda
    end

    subgraph Cuarta_Generacion
    Raul
    Erika
    Saul
    Flor
    end

    Primera_Generacion --> Segunda_Generacion
    Jorge & Sara --> Mario & Rosa
    Luis --> Isabel
    Pedro --> Hilda
    Mario --> Raul & Erika
    Hilda --> Saul & Flor

```
