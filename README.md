# tesis

Proyecto de tesis en Typst: **"Valor predictivo de escala Phoenix en mortalidad a 30 días en sepsis pediátrica"**.

## Requisitos

Instala Typst:

- Desde el sitio oficial: https://typst.app/
- O con Cargo:

```bash
cargo install --locked typst-cli
```

## Compilación local

Desde la raíz del repositorio (`/home/runner/work/tesis/tesis`):

```bash
typst compile main.typ build/tesis.pdf
```

Para recompilar en modo observación:

```bash
typst watch main.typ build/tesis.pdf
```

## Referencias bibliográficas

- Archivo BibTeX: `bibliography/refs.bib`
- Agrega entradas nuevas en formato BibTeX.
- Cita en el texto con `@clave` (por ejemplo `@schlapbach2024phoenix`).
- La bibliografía se imprime automáticamente al final del documento.

## Estructura del proyecto

```text
main.typ
styles/
  theme.typ
frontmatter/
  cover.typ
  resumen.typ
  abstract.typ
  keywords.typ
  acknowledgements.typ
  dedication.typ
  abbreviations.typ
chapters/
  01-introduccion.typ
  02-objetivos.typ
  03-metodos.typ
  04-resultados.typ
  05-discusion.typ
  06-conclusiones.typ
  07-limitaciones.typ
  08-trabajo-futuro.typ
  09-apendices.typ
assets/
  figures/
    placeholder.svg
  tables/
    baseline-characteristics.typ
bibliography/
  refs.bib
.github/workflows/
  typst.yml
```

## CI

El workflow `.github/workflows/typst.yml` compila el PDF en cada `push` y `pull_request` y lo publica como artefacto (`tesis-pdf`).
