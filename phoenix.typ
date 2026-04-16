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

// Numeración de encabezados (si la necesitas en subtítulos, se puede mostrar en el #show)
#set heading(numbering: "1.1.")

// --- Formato solicitado ---
// Títulos (Heading nivel 1): Arial 12, negrita, MAYÚSCULAS, centrado
// Subtítulos (Heading nivel 2): Arial 12, negrita, tipo oración, alineado a la izquierda
// Además: al final de cada sección (nivel 1) continúa la siguiente en página aparte.
// Implementación: forzamos pagebreak() antes de cada heading nivel 1 a partir del segundo.

#show heading.where(level: 1): it => {
  // Salto de página "débil" (no se aplica si ya estamos al inicio de la página)
  pagebreak(weak: true)

  set text(font: "Arial", size: 12pt, weight: "bold")
  set align(center)
  v(0.8em)
  block[
    #upper(it.body)
  ]
  v(0.5em)
}

#show heading.where(level: 2): it => {
  set text(font: "Arial", size: 12pt, weight: "bold")
  set align(left)
  v(0.6em)
  block[
    #it.body
  ]
  v(0.3em)
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

  // Nombre formateado en dos filas (encabezados y datos)
  #text(size: 12pt)[
    #align(center)[
      #grid(
        columns: (auto, auto, auto),
        column-gutter: 2em,
        // Espacio horizontal entre las columnas
        row-gutter: 0.6em,
        // Espacio vertical entre la fila de títulos y la de datos

        // Primera fila: Encabezados
        [Nombre], [Carnet (DPI)], [Registro académico],

        // Segunda fila: Datos
        [Josué Daniel Soto Consuegra], [3157980840902], [201931435],
      )
    ]

    #v(0.4cm)
  ]

  #v(3cm)

  // Sección del Asesor
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

// Generar índice de contenidos automáticamente
#outline(
  title: "Índice de contenidos",
  indent: auto,
)

= Sección I. Antecedentes y contextualización del problema de investigación

La sepsis pediátrica continúa entre las principales causas de muerte prevenible en unidades de cuidados intensivos, con mayor impacto en países de ingresos bajos y medios (1,2). El consenso int[...]

En el estudio de derivación y validación de Phoenix (cohortes retrospectivas multicéntricas), la puntuación ≥2 identificó sepsis asociada a mayor mortalidad hospitalaria, con AUROC aproxima[...]

Un análisis secundario internacional mostró que la categoría de sepsis “SIRS-negativa” conservó mortalidad clínicamente relevante, lo que evidencia que la fisiopatología de disfunción o[...]

En Latinoamérica, reportes observacionales en UCIP describen mortalidad por sepsis pediátrica entre 10% y 25%, con variabilidad por acceso a soporte avanzado, oportunidad diagnóstica y carga de[...]

Estudios de modelos pronósticos en sepsis pediátrica comparan escalas de disfunción orgánica y muestran que puntuaciones basadas en falla multiorgánica predicen mejor mortalidad a corto plazo[...]

En Guatemala, la evidencia publicada sobre validación local de Phoenix es limitada y predomina información de carga asistencial más que de desempeño pronóstico; por ello, existe una brecha en[...]

A escala global, la sepsis causa millones de casos pediátricos anuales y concentra mayor mortalidad en África, Asia y América Latina por inequidades de acceso a cuidados críticos (1,2). En con[...]

= Sección II. Objetivos

== Objetivo general
Determinar la asociación de la puntuación de Sepsis Phoenix calculada al ingreso para mortalidad a 30 días en pacientes con sepsis pediátrica admitidos al Hospital General del IGSS de Quetzaltenango durante el período de noviembre 2026 a noviembre 2027.

== Objetivos específicos
1. Describir las características sociodemográficas y clínicas (edad, sexo, comorbilidades, foco infeccioso) de la población de estudio.
2. Evaluar el desempeño pronóstico de la escala Phoenix según categorías de puntuación para mortalidad a 30 días.
3. Ajustar la asociación entre puntuación Phoenix y mortalidad a 30 días por posibles variables de confusión clínicamente relevantes.

= Sección III. Población y métodos
== Enfoque y diseño de investigación
La investigación tendrá un enfoque cuantitativo, diseño analítico, observacional, longitudinal prospectivo.

== Población y muestra
- Población o universo: Pacientes mayores a 1 mes y menores de 18 años de edad ingresados al Hospital General de Quetzaltenango del Instituto Guatemalteco de Seguridad Social.
- Muestra: Se utilizará un muestreo no probabilístico por conveniencia, reclutando a todos los niños que cumplan los criterios de inclusión durante noviembre de 2026 a noviembre de 2027.

== Criterios de inclusión y exclusión
=== Criterios de inclusión
- Pacientes de 1 mes a 17 años con diagnóstico de sepsis.

=== Criterios de exclusión
- Pacientes trasladados de otros centros con más de 24 horas de evolución.
- Pacientes con infecciones adquiridas en el hospital.
- Pacientes con traumatismo.
- Expedientes clínicos incompletos que impidan el cálculo de la escala Phoenix.

== Variables a estudiar
Edad cronológica, sexo biológico, presencia de comorbilidades crónicas, foco de sospecha infecciosa, puntuación individual de los cuatro sistemas de la escala Phoenix (respiratorio, cardiovascular, coagulación, neurológico), puntuación total de Sepsis Phoenix, presencia de choque séptico (definido como disfunción cardiovascular con al menos 1 punto), necesidad de ventilación mecánica invasiva, días de estancia hospitalaria y mortalidad a 30 días.

== Hipótesis de investigación
La obtención de una puntuación $>= 4$ en la escala de Sepsis Phoenix al ingreso hospitalario está asociada de forma directa y estadísticamente significativa con una mayor probabilidad de mortalidad a los 30 días en pacientes con sepsis pediátrica en el Hospital General del IGSS de Quetzaltenango.

== Técnicas de recolección de datos e instrumentos:
La recolección de datos se realizará mediante la revisión sistemática de expedientes clínicos físicos y electrónicos. Se utilizará un instrumento de recolección de datos estructurado (boleta de recolección de datos y bases de datos en archivos de valores separados por comas) diseñado específicamente para consolidar los signos vitales, resultados de laboratorio (plaquetas, dímero-D, fibrinógeno, lactato) y soporte vasoactivo y respiratorio en las primeras 24 horas.

== Plan de análisis:
Se realizará estadística descriptiva utilizando medidas de tendencia central y dispersión para variables cuantitativas, y frecuencias relativas/absolutas para cualitativas. Para el análisis bivariado se empleará la prueba de Chi-cuadrado para la asociación entre puntuación Phoenix ($<4$ vs $>=4$) y mortalidad a 30 días. Se calculará el Área Bajo la Curva de Características Operativas del Receptor (AUROC) y se realizará regresión logística binaria para el cálculo de Odds Ratios (OR) con un nivel de significancia de $p < 0.05$.

== Principios éticos:
El estudio se apegará a los lineamientos de la Declaración de Helsinki para investigación médica. Se solicitará la aprobación del Comité de Ética, Investigación y Docencia del IGSS. Se garantizará la confidencialidad de los datos codificando la identidad de los pacientes.

= Sección IV. Alcances
El alcance de esta investigación será de tipo correlacional y explicativo, ya que no solo busca describir las características de los pacientes, sino cuantificar y evaluar el nivel de asociación entre una variable clínica predictora (Escala Phoenix) y un desenlace clínico crítico (mortalidad a los 30 días).

Valor de la investigación: Este trabajo proporcionará la primera validación regional de los nuevos criterios Phoenix en el occidente de Guatemala, con el objetivo de identificar pacientes con alta mortalidad.

Limitaciones: Debido al diseño, el estudio está sujeto a sesgos de información y registro secundario a historias clínicas incompletas (como la falta de medición de lactato o gases arteriales en todos los pacientes), lo cual puede subestimar la verdadera puntuación fisiológica al ingreso. Asimismo, al ser un estudio unicéntrico, la generalización de los resultados a otros hospitales puede ser limitada.

= Sección V. Referencias bibliográficas
1. Schlapbach LJ, Watson RS, Sorce LR, Argent AC, Menon K, Hall MW, et al. International Consensus Criteria for Pediatric Sepsis and Septic Shock. JAMA. 2024;331(8):665-674.
2. Sanchez-Pinto LN, Bennett TD, DeWitt PE, Russell S, Rebull MN, Martin B, et al. Development and Validation of the Phoenix Criteria for Pediatric Sepsis and Septic Shock. JAMA. 2024;331(8):675-686.
3. Lv Y, Zheng J, Cai J, Shui J, Liu Y, Zhang Z. Long-term mortality in pediatric sepsis: a systematic review and meta-analysis. [En prensa] 2025.
4. Rudd KE, Johnson SC, Agesa KM, Shackelford KA, Tsoi D, Kievlan DR, et al. Global, regional, and national sepsis incidence and mortality, 1990-2017: analysis for the Global Burden of Disease Study. Lancet. 2020;395(10219):200-211.
5. Souza DC, Jaramillo-Bustamante JC, Céspedes-Lesczinsky M, et al. Challenges and health-care priorities for reducing the burden of paediatric sepsis in Latin America: a call to action. Lancet Child Adolesc Health. 2022;6(2):129-136.
6. Goldstein B, Giroir B, Randolph A. International pediatric sepsis consensus conference: definitions for sepsis and organ dysfunction in pediatrics. Pediatr Crit Care Med. 2005;6(1):2-8.
