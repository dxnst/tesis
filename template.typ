// Plantilla de tesis académica en Typst
// Valor predictivo de escala Phoenix en mortalidad a 30 días en sepsis pediátrica

#let tesis(
  titulo: "",
  autor: "",
  director: "",
  institucion: "",
  facultad: "",
  programa: "",
  ciudad: "",
  fecha: "",
  body,
) = {
  // Configuración del documento
  set document(title: titulo, author: autor)

  set page(
    paper: "us-letter",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2.5cm),
    number-align: center,
  )

  set text(
    font: "New Computer Modern",
    size: 12pt,
    lang: "es",
  )

  set par(
    justify: true,
    leading: 1.5em,
    first-line-indent: 1.25cm,
  )

  // Configuración de encabezados
  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(1cm)
    set text(size: 16pt, weight: "bold")
    block(it)
    v(0.5cm)
  }

  show heading.where(level: 2): it => {
    v(0.5cm)
    set text(size: 14pt, weight: "bold")
    block(it)
    v(0.3cm)
  }

  show heading.where(level: 3): it => {
    v(0.3cm)
    set text(size: 12pt, weight: "bold")
    block(it)
    v(0.2cm)
  }

  // Configuración de figuras y tablas
  set figure(gap: 1em)

  show figure.caption: it => {
    set text(size: 10pt)
    it
  }

  // Configuración de bibliografía
  set bibliography(style: "american-medical-association")

  // Portada
  page(numbering: none)[
    #set align(center)
    #v(2cm)

    #text(size: 14pt, weight: "bold")[#upper(institucion)]

    #v(0.5cm)

    #text(size: 12pt)[#facultad]

    #v(0.3cm)

    #text(size: 12pt)[#programa]

    #v(3cm)

    #text(size: 16pt, weight: "bold")[#titulo]

    #v(2cm)

    #text(size: 12pt)[
      Tesis que para obtener el grado de \
      Especialista en Pediatría Médica \
      presenta:
    ]

    #v(1cm)

    #text(size: 14pt, weight: "bold")[#autor]

    #v(1.5cm)

    #text(size: 12pt)[
      Director de tesis: \
      #director
    ]

    #v(2cm)

    #text(size: 12pt)[#ciudad, #fecha]
  ]

  // Contenido
  set page(numbering: "i")
  counter(page).update(1)

  body
}

// Función auxiliar para secciones no numeradas
#let seccion-sin-numero(titulo, cuerpo) = {
  heading(numbering: none, titulo)
  cuerpo
}
