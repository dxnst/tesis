# Tesis: Valor predictivo de la escala Phoenix Sepsis Score en mortalidad a 30 días en sepsis pediátrica

Tesis de especialidad en Pediatría Médica escrita en [Typst](https://typst.app/).

## Estructura del proyecto

```
main.typ              # Documento principal
template.typ          # Plantilla y estilos de la tesis
references.bib        # Bibliografía en formato BibTeX
capitulos/
  01-resumen.typ      # Resumen y Abstract
  02-marco-teorico.typ    # Marco teórico
  03-planteamiento.typ    # Planteamiento del problema
  04-justificacion.typ    # Justificación
  05-objetivos.typ        # Objetivos
  06-hipotesis.typ        # Hipótesis
  07-material-metodos.typ # Material y métodos
  08-resultados.typ       # Resultados
  09-discusion.typ        # Discusión
  10-conclusiones.typ     # Conclusiones
  11-anexos.typ           # Anexos
figuras/              # Directorio para figuras e imágenes
```

## Compilación

### Requisitos

- [Typst](https://typst.app/) v0.12.0 o superior

### Generar el PDF

```bash
typst compile main.typ
```

### Modo watch (recompilación automática)

```bash
typst watch main.typ
```
