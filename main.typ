// Tesis: Valor predictivo de escala Phoenix en mortalidad a 30 días en sepsis pediátrica
// Documento principal

#import "template.typ": tesis, seccion-sin-numero

#show: tesis.with(
  titulo: "Valor predictivo de la escala Phoenix Sepsis Score en mortalidad a 30 días en pacientes pediátricos con sepsis",
  autor: "[Nombre del autor]",
  director: "[Nombre del director de tesis]",
  institucion: "[Nombre de la institución]",
  facultad: "[Nombre de la facultad]",
  programa: "Especialidad en Pediatría Médica",
  ciudad: "[Ciudad]",
  fecha: "2025",
)

// Dedicatoria
#seccion-sin-numero([Dedicatoria])[
  #align(right)[
    #text(style: "italic")[
      A mis padres, por su apoyo incondicional. \
      A mis maestros, por sus enseñanzas. \
      A los niños, razón de nuestra vocación.
    ]
  ]
]

// Agradecimientos
#seccion-sin-numero([Agradecimientos])[
  Agradezco a mi director de tesis por su guía y dedicación en la realización de este trabajo.

  A los profesores del programa de especialidad en Pediatría por su formación integral.

  Al personal de la Unidad de Cuidados Intensivos Pediátricos por su colaboración en la recolección de datos.

  A mi familia por su paciencia y apoyo durante estos años de formación.
]

// Resumen y Abstract
#include "capitulos/01-resumen.typ"

// Índice
#pagebreak()
#outline(
  title: [Índice],
  depth: 3,
  indent: 1.5em,
)

// Índice de tablas
#pagebreak()
#outline(
  title: [Índice de tablas],
  target: figure.where(kind: table),
)

// Índice de figuras
#outline(
  title: [Índice de figuras],
  target: figure.where(kind: image),
)

// Contenido principal - numeración arábiga
#set page(numbering: "1")
#counter(page).update(1)

// Marco teórico
#include "capitulos/02-marco-teorico.typ"

// Planteamiento del problema
#include "capitulos/03-planteamiento.typ"

// Justificación
#include "capitulos/04-justificacion.typ"

// Objetivos
#include "capitulos/05-objetivos.typ"

// Hipótesis
#include "capitulos/06-hipotesis.typ"

// Material y métodos
#include "capitulos/07-material-metodos.typ"

// Resultados
#include "capitulos/08-resultados.typ"

// Discusión
#include "capitulos/09-discusion.typ"

// Conclusiones
#include "capitulos/10-conclusiones.typ"

// Bibliografía
#pagebreak()
#bibliography("references.bib", title: "Bibliografía")

// Anexos
#set heading(numbering: none)
#include "capitulos/11-anexos.typ"
