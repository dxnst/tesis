#set document(
  title: "Anteproyecto de tesis",
  author: ("Soto Consuegra, Josué Daniel",),
)

#set page(
  paper: "us-letter",
  margin: (left: 2.5cm, right: 2.5cm, top: 2cm, bottom: 2cm),
  number-align: center,
)

// Texto base: Arial 11, justificado
#set text(
  font: "Arial",
  size: 11pt,
  lang: "es",
)

#set par(
  leading: 0.9em,
  first-line-indent: 1.25cm,
  justify: true,
)

// Numeración de encabezados (sin punto final para que compile como 3.3 en vez de 3.3.)
#set heading(numbering: "1.1")

// Regla para heredar el número del título actual a las listas numeradas (+)
#set enum(numbering: (..args) => context {
  let h = counter(heading).get()
  let nums = h + args.pos()
  nums.map(str).join(".")
})

// --- Formato solicitado ---
#show heading.where(level: 1): it => {
  // Salto de página "débil"
  pagebreak(weak: true)

  set text(font: "Arial", size: 12pt, weight: "bold")
  set align(center)
  v(0.8em)
  block[
    #if it.numbering != none [
      #counter(heading).display(it.numbering)
      #h(0.5em)
    ]
    #upper(it.body)
  ]
  v(0.5em)
}

#show heading.where(level: 2): it => {
  set text(font: "Arial", size: 12pt, weight: "bold")
  set align(left)
  v(0.6em)
  block[
    #if it.numbering != none [
      #counter(heading).display(it.numbering)
      #h(0.5em)
    ]
    #it.body
  ]
  v(0.3em)
}

#show heading.where(level: 3): it => {
  set text(font: "Arial", size: 12pt, weight: "bold")
  set align(left)
  v(0.4em)
  block[
    #if it.numbering != none [
      #counter(heading).display(it.numbering)
      #h(0.5em)
    ]
    #it.body
  ]
  v(0.2em)
}

#set page(
  paper: "us-letter",
  margin: (left: 2.5cm, right: 2.5cm, top: 2cm, bottom: 2cm),
  background: [
    #place(center + horizon, image("logo-usac.png", width: 14cm))
    #place(top + left, block(width: 100%, height: 100%, fill: rgb("ffffffD9")))
  ],
)

#align(center)[
  #text(size: 14pt, weight: "bold")[
    #v(3cm)
    UNIVERSIDAD DE SAN CARLOS DE GUATEMALA \
    FACULTAD DE CIENCIAS MÉDICAS \
    ESCUELA DE ESTUDIOS DE POSTGRADO
  ]

  #v(6cm)

  #text(size: 15pt, weight: "bold")[
    VALOR PREDICTIVO DE ESCALA PHOENIX EN MORTALIDAD A 30 DÍAS EN SEPSIS PEDIÁTRICA \
    #v(0.5cm)
  ]

  #v(1cm)

  #text(size: 12pt)[
    #align(center)[
      #grid(
        columns: (auto, auto, auto),
        column-gutter: 2em,
        row-gutter: 0.6em,
        [Nombre], [Carnet (DPI)], [Registro académico],
        [Josué Daniel Soto Consuegra], [3157980840902], [201931435],
      )
    ]
    #v(0.4cm)
  ]

  #v(3cm)

  #align(left)[
    #text(size: 11pt)[
      #line(length: 7cm, stroke: 0.5pt)
      Dra. María Regina Solares Azpuru \
      Asesor de Tesis
    ]
  ]

  #v(1cm)

  #text(size: 12pt)[
    Quetzaltenango, abril de 2026
  ]
]

#pagebreak()
#set page(background: none, numbering: "1")
#counter(page).update(1)

#outline(
  title: "Índice de contenidos",
  indent: auto,
)

= Antecedentes y contextualización del problema de investigación
La sepsis pediátrica se mantiene como un desafío crítico de salud pública global, con una incidencia estimada de 25 millones de casos anuales que resultan en más de 3 millones de muertes, lo que representa aproximadamente un tercio de la mortalidad infantil mundial. @Rudd2020

El desarrollo de criterios diagnósticos precisos ha sido fundamental para mejorar el pronóstico de esta condición. Históricamente, la definición de 2005 de la International Pediatric Sepsis Consensus Conference (IPSCC) se basó en el síndrome de respuesta inflamatoria sistémica (SIRS), el cual ha demostrado tener una baja especificidad y un valor predictivo limitado para identificar niños con alto riesgo de mortalidad. Estudios observacionales previos, como el de Weiss et al. en China, evidenciaron que la presencia de disfunción orgánica es un predictor mucho más robusto de muerte por sepsis (AUROC 0.74) en comparación con los criterios de SIRS (AUROC 0.56). @Weiss2015

En respuesta a estas limitaciones, el estudio multicéntrico de derivación de Sanchez-Pinto et al. (2024), que analizó más de 3 millones de casos pediátricos en entornos con diversos recursos, dio origen a la puntuación Phoenix. Esta investigación demostró que un puntaje Phoenix $>=2$ puntos presenta un desempeño superior para predecir mortalidad intrahospitalaria comparado con los criterios IPSCC, logrando un valor predictivo positivo (VPP) del 7.1% en países de altos recursos y hasta un 28.5% en entornos de bajos recursos. Adicionalmente, el metanálisis de Lv et al. (2026) resalta la fragilidad de los sobrevivientes, reportando una mortalidad acumulada a largo plazo del 11%, lo que subraya la importancia de herramientas predictivas que permitan una vigilancia posterior al alta optimizada. @SanchezPinto2024 @Lv2026

La metodología Phoenix se diferencia por su enfoque basado en datos de cuatro sistemas orgánicos clave: respiratorio, cardiovascular, de coagulación y neurológico. A diferencia de escalas como pSOFA o PELOD-2, Phoenix fue diseñada para ser aplicable universalmente, incluso en entornos donde el acceso a laboratorios complejos es limitado. Estudios como el de Schlapbach et al. (2024) refuerzan que el choque séptico, definido dentro de este nuevo marco como sepsis pediátrica más al menos un punto cardiovascular en la escala, eleva drásticamente la tasa de mortalidad hasta un 33.5% en regiones en desarrollo. @Schlapbach2024

La frecuencia de la sepsis pediátrica y su distribución geográfica muestran una carga desproporcionada en países de ingresos medios y bajos, donde la mortalidad es hasta cuatro veces superior a la de países desarrollados. El Hospital General de Quetzaltenango del Instituto Guatemalteco de Seguridad Social atiende a una población altamente vulnerable del occidente del país, aunque se cuenta con servicios de cuidados intensivos, la implementación de escalas validadas internacionalmente como Phoenix es importante. La falta de una herramienta predictiva estandarizada podría retrasar intervenciones críticas y la optimización de recursos en cuidados críticos.

A partir de esta necesidad, se plantea la siguiente pregunta de investigación: **¿Cuál es la asociación entre la puntuación de la escala Sepsis Phoenix calculada al ingreso y la mortalidad a 30 días en pacientes con sepsis pediátrica admitidos al Hospital General del IGSS de Quetzaltenango durante el periodo de noviembre 2026 a noviembre 2027?**

= Objetivos

== Objetivo general
Determinar la asociación de la puntuación de Sepsis Phoenix calculada al ingreso para mortalidad a 30 días en pacientes con sepsis pediátrica admitidos al Hospital General del IGSS de Quetzaltenango durante el período de noviembre 2026 a noviembre 2027.

== Objetivos específicos
+ Caracterizar el perfil sociodemográfico y clínico de los pacientes pediátricos con diagnóstico de sepsis, incluyendo edad, sexo, estado nutricional, presencia de comorbilidades y el foco infeccioso principal.
+ Cuantificar la distribución de la puntuación Phoenix y sus componentes (respiratorio, cardiovascular, coagulación y neurológico) en la población de estudio al momento de su admisión hospitalaria.
+ Evaluar el desempeño pronóstico de la escala Phoenix según categorías de puntuación para mortalidad a 30 días.
+ Estimar la magnitud de la asociación entre las categorías de riesgo de la escala Phoenix y la mortalidad a 30 días, mediante el cálculo de razones de momios (OR) ajustadas por variables de confusión.

= Población y métodos
== Enfoque y diseño de investigación
La investigación tendrá un enfoque cuantitativo, diseño analítico, observacional, longitudinal prospectivo.

== Población y muestra
+ Población o universo: Pacientes pediátricos mayores de 1 mes y menores de 18 años de edad que ingresen con sospecha de infección al Hospital General de Quetzaltenango del Instituto Guatemalteco de Seguridad Social (IGSS).
+ Muestra: Se aplicará un muestreo no probabilístico por conveniencia, seleccionando de forma consecutiva a todos los pacientes que cumplan estrictamente con los criterios de inclusión durante el período prospectivo comprendido entre noviembre de 2026 y noviembre de 2027.

== Criterios de inclusión y exclusión
=== Criterios de inclusión
+ Pacientes en el rango etario de 1 mes a 17 años con 11 meses.
+ Diagnóstico clínico de sepsis en las primeras 24 horas de ingreso.

=== Criterios de exclusión
+ Pacientes trasladados desde otros centros de atención con más de 24 horas de evolución de tratamiento antimicrobiano o soporte avanzado.
+ Pacientes cuyo cuadro infeccioso sea catalogado como infección asociada a la atención de la salud (adquirida en el hospital).
+ Pacientes con politraumatismo o quemaduras graves.
+ Expedientes clínicos con información incompleta en las primeras 24 horas que imposibilite el cálculo de la escala Phoenix.

== Variables a estudiar
Las variables independientes y de caracterización clínica incluirán: edad cronológica, sexo biológico, estado nutricional, presencia de comorbilidades crónicas, y foco de origen de la sospecha infecciosa. Las variables clínicas predictoras abarcarán la puntuación individual de los cuatro sistemas de la escala Phoenix (respiratorio, cardiovascular, de coagulación y neurológico), la puntuación total de Sepsis Phoenix, y la presencia de choque séptico (definido por disfunción cardiovascular $\ge$ 1 punto). Las variables dependientes o resultados serán: la necesidad de ventilación mecánica invasiva, los días de estancia hospitalaria total y en cuidados intensivos, y la mortalidad por cualquier causa a los 30 días del ingreso.

== Hipótesis de investigación
La obtención de una puntuación $>= 4$ en la escala de Sepsis Phoenix al ingreso hospitalario está asociada de forma directa y estadísticamente significativa con una mayor probabilidad de mortalidad a los 30 días en pacientes con sepsis pediátrica en el Hospital General del IGSS de Quetzaltenango.

== Técnicas de recolección de datos e instrumentos
La recolección de la información se efectuará a través de la revisión sistemática de los expedientes clínicos físicos y del sistema informático hospitalario. Se diseñará y validará un instrumento estructurado (boleta de recolección de datos) que consolidará de forma estandarizada los signos vitales, parámetros de soporte ventilatorio y vasoactivo, y biomarcadores de laboratorio (recuento de plaquetas, dímero-D, fibrinógeno, lactato sérico) documentados en las primeras 24 horas del ingreso. Los datos serán codificados y tabulados en una base de datos electrónica (formato de valores separados por comas).

== Plan de análisis
El análisis estadístico iniciará con la fase descriptiva, calculando medidas de tendencia central (media o mediana) y de dispersión (desviación estándar o rango intercuartílico) para las variables cuantitativas según su distribución de normalidad, así como frecuencias absolutas y porcentajes para las variables categóricas.  Para el análisis bivariado se empleará la prueba de Chi-cuadrado para la asociación entre puntuación Phoenix ($<4$ vs $>=4$) y mortalidad a 30 días. Se calculará el Área Bajo la Curva de Características Operativas del Receptor (AUROC) y se realizará regresión logística binaria para el cálculo de Odds Ratios (OR) con un nivel de significancia de $p < 0.05$.

== Principios éticos en la investigación
La presente investigación se regirá bajo los principios éticos internacionales dictados por la Declaración de Helsinki. Previo al inicio de la recolección de datos, el protocolo será sometido para su dictamen y aprobación por el Comité de Ética, Investigación y Docencia del IGSS. Al tratarse de un estudio observacional basado en expedientes, el riesgo físico es nulo; no obstante, se garantizará la máxima confidencialidad y anonimato de los participantes mediante la seudonimización de las bases de datos.

= Alcances, Valor y Limitaciones
== Alcances
El alcance de esta investigación será de tipo correlacional y explicativo, ya que no solo busca describir las características de los pacientes, sino cuantificar y evaluar el nivel de asociación entre una variable clínica predictora (Escala Phoenix) y un desenlace clínico crítico (mortalidad a los 30 días).

== Valor de la investigación
Este trabajo proporcionará la primera validación regional de los nuevos criterios Phoenix en el occidente de Guatemala, con el objetivo de identificar pacientes con alta mortalidad.

== Limitaciones
Debido al diseño, el estudio está sujeto a sesgos de información y registro secundario a historias clínicas incompletas (como la falta de medición de lactato o gases arteriales en todos los pacientes), lo cual puede subestimar la verdadera puntuación fisiológica al ingreso. Asimismo, al ser un estudio unicéntrico, la generalización de los resultados a otros hospitales puede ser limitada.

#bibliography("bib.yaml", style: "mary-ann-liebert-vancouver")
