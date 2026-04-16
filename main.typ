#import "styles/theme.typ": setup

#setup()

#set document(
  title: "Valor predictivo de escala Phoenix en mortalidad a 30 días en sepsis pediátrica",
  author: ("[Nombre del autor/a]",),
)

#include "frontmatter/cover.typ"
#pagebreak()

#set page(numbering: "i", number-align: center)

#include "frontmatter/resumen.typ"
#pagebreak()

#include "frontmatter/abstract.typ"
#pagebreak()

#include "frontmatter/keywords.typ"
#pagebreak()

#include "frontmatter/acknowledgements.typ"
#pagebreak()

#include "frontmatter/dedication.typ"
#pagebreak()

= Índice general
#outline(title: none)
#pagebreak()

= Lista de figuras
#outline(title: none, target: figure.where(kind: image))
#pagebreak()

= Lista de tablas
#outline(title: none, target: figure.where(kind: table))
#pagebreak()

#include "frontmatter/abbreviations.typ"
#pagebreak()

#set page(numbering: "1", number-align: center)

#include "chapters/01-introduccion.typ"
#pagebreak()

#include "chapters/02-objetivos.typ"
#pagebreak()

#include "chapters/03-metodos.typ"
#pagebreak()

#include "chapters/04-resultados.typ"
#pagebreak()

#include "chapters/05-discusion.typ"
#pagebreak()

#include "chapters/06-conclusiones.typ"
#pagebreak()

#include "chapters/07-limitaciones.typ"
#pagebreak()

#include "chapters/08-trabajo-futuro.typ"
#pagebreak()

#include "chapters/09-apendices.typ"


#bibliography("bibliography/refs.bib", title: [Referencias])
