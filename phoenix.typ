// ============================================================================
// CONFIGURACIÓN DEL DOCUMENTO
// Basado en los lineamientos de mydocument.tex
// ============================================================================

#set document(
  title: "Protocolo de Investigación: Tamizaje del Neurodesarrollo en Pacientes Hospitalizados",
  author: ("Soto Consuegra, Josué Daniel",),
)

// Configuración de página (letter paper con márgenes específicos)
#set page(
  paper: "us-letter",
  margin: (left: 2.5cm, right: 2.5cm, top: 2cm, bottom: 2cm),
  numbering: "1",
  number-align: center,
)

// Configuración de texto principal
#set text(
  font: "Arial",
  size: 11pt,
  lang: "es",
)

// Interlineado 1.5
#set par(
  leading: 0.9em,
  first-line-indent: 1.25cm,
  justify: true,
)

// Configuración de encabezados
#set heading(numbering: "1.1.1.")

#show heading.where(level: 1): it => {
  set text(size: 12pt, weight: "bold")
  set align(center)
  v(0.5em)
  block[
    #upper[CAPÍTULO #counter(heading).display("I"). #upper(it.body)]
  ]
  v(0.3em)
}

#show heading.where(level: 2): it => {
  set text(size: 12pt, weight: "bold")
  v(0.8em)
  block[
    #counter(heading).display("1.1") #it.body
  ]
  v(0.3em)
}

#show heading.where(level: 3): it => {
  set text(size: 11pt, weight: "bold", style: "italic")
  v(0.6em)
  pad(left: 1em)[
    #counter(heading).display("1.1.1") #it.body
  ]
  v(0.2em)
}

#show heading.where(level: 4): it => {
  set text(size: 11pt, weight: "bold", style: "italic")
  v(0.5em)
  pad(left: 2.5em)[
    ◇ #it.body
  ]
  v(0.2em)
}

// Configuración de listas
#set enum(
  indent: 1.25cm,
  spacing: 0.8em,
)

#set list(
  indent: 1.25cm,
  spacing: 0.8em,
)

// Funciones auxiliares
#let asq = ["Cuestionario Edades y Etapas, Tercera Edición (ASQ-3)"]

// ============================================================================
// PORTADA CON LOGO COMO MARCA DE AGUA (DETRÁS DEL TEXTO)
// ============================================================================

#set page(numbering: none)

// Logo como marca de agua centrada detrás del texto
// NOTA: El logo PNG debe tener transparencia aplicada previamente (ej. 20% opacidad)
#place(
  center + horizon,
  float: false,
  clearance: 0pt,
)[
  #image(
    "logo-usac2.png",
    width: 15cm,
  )
]

// Contenido de la portada (se superpone al logo)
#align(center)[
  #v(2cm)

  #text(size: 14pt, weight: "bold")[
    UNIVERSIDAD DE SAN CARLOS DE GUATEMALA \
    FACULTAD DE CIENCIAS MÉDICAS \
    ESCUELA DE ESTUDIOS DE POSTGRADO
  ]

  #v(7cm)

  #text(size: 16pt, weight: "bold")[
    Planteamiento del problema y justificación:\
    Asociación entre Puntuación Phoenix y mortalidad a 30 días en pacientes con sepsis admitidos a UCIP.
      ]

  #v(5cm)

  #text(size: 12pt)[
    Josué Daniel Soto Consuegra \
    Médico Residente I -Pediatría- \
    Carnet 201931435 \
  ]

  #v(1cm)

  #text(size: 12pt)[
    Quetzaltenango, Febrero de 2026
  ]
]

#pagebreak()

// A partir de aquí, numeración normal
#set page(numbering: "1")

// ============================================================================
// ÍNDICE
// ============================================================================

#align(center)[
  #text(size: 14pt, weight: "bold")[ÍNDICE]
]

#v(1em)

#outline(
  title: none,
  indent: 2em,
)

#pagebreak()

// ============================================================================
// CONTENIDO DEL PROTOCOLO
// ============================================================================

// ============================================================================
// PLANTEAMIENTO DEL PROBLEMA Y JUSTIFICACIÓN
// ============================================================================

= Planteamiento del problema

La sepsis pediátrica representa un grave problema de salud pública mundial, causando aproximadamente 3.3 millones de muertes al año. Se define como la respuesta desregulada del organismo frente a una infección, que produce daño a los propios tejidos y disfunción de órganos que pone en peligro la vida. A diferencia de una infección simple, en la sepsis el sistema inmunológico genera una respuesta excesiva e inadecuada que lesiona al propio paciente: órganos que no están directamente infectados comienzan a fallar ---los pulmones dejan de oxigenar adecuadamente, el corazón no mantiene la presión arterial, la coagulación se altera y el cerebro disminuye su nivel de conciencia---. Cuando esta disfunción incluye colapso cardiovascular que requiere medicamentos vasoactivos, se denomina shock séptico.

Durante casi dos décadas, el diagnóstico y la clasificación de la gravedad se basaron en los criterios de la Conferencia Internacional de Consenso de Sepsis Pediátrica (IPSCC) de 2005, los cuales dependen del Síndrome de Respuesta Inflamatoria Sistémica (SIRS). Sin embargo, estos criterios están desactualizados: presentan baja especificidad ---clasifican como sépticos a muchos niños que simplemente tienen fiebre o taquicardia por otras causas---, no permiten una estratificación adecuada del riesgo, y generan frecuente discordancia con el diagnóstico clínico real. Más preocupante aún, no detectan a un grupo significativo de pacientes gravemente enfermos que no presentan signos clásicos de inflamación sistémica.

Recientemente, el Grupo de Trabajo de Definición de Sepsis Pediátrica de la Sociedad de Medicina de Cuidados Críticos (SCCM) redefinió la sepsis pediátrica como una infección con disfunción orgánica potencialmente mortal. Para hacer operativa esta definición, se desarrolló la Puntuación de Sepsis Phoenix (Phoenix Sepsis Score), basada en un enfoque impulsado por datos que evaluó más de 3.6 millones de casos pediátricos en 10 sistemas de salud internacionales. La escala evalúa la disfunción en cuatro sistemas orgánicos: respiratorio, cardiovascular, coagulación y neurológico.

Se considera sepsis cuando existe sospecha de infección más una puntuación $>= 2$ puntos; el shock séptico requiere además $>= 1$ punto cardiovascular. La evidencia internacional demuestra que los criterios Phoenix tienen un mejor rendimiento diagnóstico que los IPSCC 2005, con un AUROC de 0.82 para predecir mortalidad. La mortalidad en pacientes que cumplieron criterios Phoenix fue del 9.0%, frente a 1.3% en quienes no los cumplieron. De manera crucial, los criterios Phoenix identifican mejor a los pacientes con mayor riesgo de mortalidad, incluyendo aquellos que no presentan SIRS ---la denominada "sepsis SIRS-negativa"--- y que anteriormente pasaban desapercibidos a pesar de tener una mortalidad significativamente elevada.

La UCIP del Hospital General del IGSS de Quetzaltenango (HGIQ) atiende una población pediátrica con alta frecuencia de sepsis y cuenta con los recursos necesarios para la atención de pacientes críticos: monitoreo hemodinámico, ventilación mecánica, soporte vasoactivo, gasometría arterial, lactato, tiempos de coagulación y demás estudios requeridos para calcular la Puntuación Phoenix. Sin embargo, actualmente no se utiliza una escala de estratificación pronóstica estandarizada al ingreso. Las decisiones sobre tratamiento y comunicación pronóstica con las familias dependen del juicio clínico individual, sin respaldo cuantitativo. A pesar de la validación internacional de los criterios Phoenix, es fundamental determinar cómo se comporta esta escala en el contexto local. Surge entonces la pregunta de investigación: ¿Cuál es la asociación entre la Puntuación de Sepsis Phoenix calculada al ingreso y la mortalidad a 30 días en pacientes pediátricos con sospecha de infección admitidos a la UCIP del HGIQ?

#pagebreak()

= Justificación

La adopción de la Escala Phoenix representa un cambio de paradigma: se deja atrás la inflamación sistémica (SIRS) para centrarse en la disfunción orgánica que amenaza la vida. La Puntuación Phoenix ha demostrado tener un valor predictivo positivo más alto y una sensibilidad comparable o superior a los criterios IPSCC para predecir mortalidad. Sin embargo, toda herramienta pronóstica requiere validación en la población donde será utilizada, ya que su rendimiento puede variar según las características de los pacientes, los patógenos prevalentes y las prácticas clínicas institucionales. El HGIQ no cuenta con datos propios sobre el desempeño de esta escala, y generar esta evidencia es el primer paso para su adopción fundamentada.

La evidencia reciente indica que los criterios Phoenix capturan una proporción significativa de pacientes de alto riesgo que son "invisibles" para los criterios antiguos. El fenotipo de "sepsis SIRS-negativa" representa más de un cuarto de los pacientes con sepsis Phoenix y tiene una mortalidad del 4.7%, casi tres veces mayor que aquellos que solo cumplen criterios de SIRS sin disfunción orgánica (1.7%). Validar esta herramienta en el HGIQ permitirá detectar a estos pacientes vulnerables que actualmente podrían estar siendo subdiagnosticados, mejorando directamente los desenlaces clínicos.

La Escala Phoenix fue diseñada para ser aplicable en entornos con diferentes niveles de recursos. Es flexible y robusta: el componente cardiovascular, por ejemplo, puede evaluarse mediante el uso de medicamentos vasoactivos, lactato o presión arterial, permitiendo su cálculo incluso si no todas las variables están disponibles simultáneamente. En la UCIP del HGIQ, todos los parámetros necesarios ---relación $"PaO"_2"/""FiO"_2$ o $"SpO"_2"/""FiO"_2$, vasoactivos, lactato, plaquetas, INR, escala de Glasgow y reactividad pupilar--- se obtienen de rutina al ingreso. El cálculo puede realizarse en menos de 5 minutos sin representar carga adicional significativa.

Este estudio permitirá al HGIQ alinearse con los nuevos estándares internacionales de la SCCM, proporcionando una base sólida para la vigilancia epidemiológica de sepsis pediátrica y la mejora de la calidad asistencial. Un estudio prospectivo que asigne el puntaje al ingreso y dé seguimiento a la mortalidad a 30 días proporcionará la evidencia necesaria para implementar la Puntuación Phoenix como herramienta estándar de estratificación pronóstica, facilitando la transición a los criterios Phoenix 2024 en la práctica clínica diaria de la UCIP.
