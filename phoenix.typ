#set document(
  title: "Anteproyecto de tesis",
  author: ("Soto Consuegra, Josué Daniel",),
)

#set page(
  paper: "us-letter",
  margin: (left: 2.5cm, right: 2.5cm, top: 2cm, bottom: 2cm),
  numbering: "1",
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
  if counter(heading).at(level: 1) > 1 {
    pagebreak()
  }

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

#set page(numbering: none)

#align(center)[
  #v(2cm)
  #text(size: 14pt, weight: "bold")[
    UNIVERSIDAD DE SAN CARLOS DE GUATEMALA \
    FACULTAD DE CIENCIAS MÉDICAS \
    ESCUELA DE ESTUDIOS DE POSTGRADO
  ]

  #v(5cm)

  #text(size: 15pt, weight: "bold")[
    Anteproyecto de tesis \
    Valor predictivo de escala Phoenix en mortalidad a 30 días en sepsis pediátrica
  ]

  #v(5cm)

  #text(size: 12pt)[
    Josué Daniel Soto Consuegra \
    Médico Residente I - Pediatría
  ]

  #v(1.5cm)

  #text(size: 12pt)[
    Quetzaltenango, 2026
  ]
]

#pagebreak()
#set page(numbering: "1")

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

Determinar la asociación de la puntuación de Sepsis Phoenix calculada al ingreso para mortalidad a 30 días en pacientes con sepsis pediátrica admitidos al Hospital General del IGSS de Quetzalt[...]  

== Objetivos específicos

- Describir las características clínicas, demográficas y de laboratorio de los pacientes con sepsis pediátrica incluidos durante el período de estudio.
- Estimar la frecuencia de mortalidad a 30 días en la cohorte y según categorías de puntuación Phoenix al ingreso.
- Comparar el riesgo de mortalidad a 30 días entre estratos de puntuación Phoenix mediante medidas de asociación.
- Evaluar el desempeño pronóstico de la escala Phoenix para mortalidad a 30 días mediante discriminación (curva ROC/AUC) y puntos de corte clínicamente útiles.
- Ajustar la asociación entre puntuación Phoenix y mortalidad a 30 días por posibles variables de confusión clínicamente relevantes.

= Sección III. Población y métodos

Se propone un estudio observacional analítico, de cohorte prospectiva, en la UCIP del Hospital General del IGSS de Quetzaltenango. La población fuente estará compuesta por pacientes pediátrico[...]  

Se incluirán pacientes con datos mínimos para calcular la puntuación Phoenix al ingreso y seguimiento vital hasta 30 días. Se excluirán reingresos del mismo episodio, expedientes incompletos [...]  

Hipótesis de investigación: a mayor puntuación Phoenix al ingreso, mayor probabilidad de mortalidad a 30 días. Hipótesis nula: no existe asociación entre la puntuación Phoenix y mortalidad [...]  

La recolección de datos se realizará con ficha estandarizada y base electrónica anonimizada, a partir de expediente clínico, hoja de ingreso a UCIP y resultados de laboratorio del ingreso.

El análisis incluirá estadística descriptiva, comparación bivariada según desenlace, estimación de OR o RR con intervalos de confianza al 95%, y modelo multivariable (regresión logística)[...]  

En ética, se solicitará aval del comité correspondiente, resguardo de confidencialidad mediante codificación irreversible, uso exclusivo académico de la información y minimización de riesg[...]  

= Sección IV. Alcances

El alcance del estudio es correlacional-analítico con orientación pronóstica. Permitirá cuantificar la magnitud de la asociación entre la puntuación Phoenix al ingreso y la mortalidad a 30 [...]  

Como valor principal, generará validación contextual en el Hospital General del IGSS de Quetzaltenango, donde la carga de enfermedad y dinámica asistencial pueden diferir de cohortes internaci[...]  

= Sección V. Referencias bibliográficas

#enum(
  [Fleischmann-Struzek C, Goldfarb DM, Schlattmann P, Schlapbach LJ, Reinhart K, Kissoon N. The global burden of paediatric and neonatal sepsis: a systematic review. #em[Lancet Respir Med]. 2018;[...]
  [Rudd KE, Johnson SC, Agesa KM, et al. Global, regional, and national sepsis incidence and mortality, 1990-2017. #em[Lancet]. 2020;395(10219):200-211.],
  [Schlapbach LJ, Watson RS, Sorce LR, et al. International consensus criteria for pediatric sepsis and septic shock (Phoenix). #em[JAMA]. 2024;331(8):675-694.],
  [Sorce LR, Cifra CL, Schlapbach LJ, et al. SIRS-negative pediatric sepsis and outcomes under organ dysfunction-based definitions. #em[Crit Care Med]. 2024;52(6):e321-e330.],
  [Carcillo JA, Halstead ES, Hall MW, et al. Three hypothetical inflammation pathobiology phenotypes and pediatric sepsis-induced multiple organ failure outcome. #em[Pediatr Crit Care Med]. 2017;[...]  
  [Weiss SL, Fitzgerald JC, Pappachan J, et al. Global epidemiology of pediatric severe sepsis: the SPROUT study. #em[Am J Respir Crit Care Med]. 2015;191(10):1147-1157.],
  [Matics TJ, Sanchez-Pinto LN. Adaptation and validation of a pediatric sequential organ failure assessment score and mortality prediction. #em[JAMA Pediatr]. 2017;171(10):e172352.],
  [Organización Panamericana de la Salud. Sepsis: panorama regional y respuesta de los sistemas de salud en las Américas. Washington, DC: OPS; 2023.],
)\n