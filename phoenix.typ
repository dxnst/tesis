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

#set heading(numbering: "1.1.")

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

La sepsis pediátrica continúa entre las principales causas de muerte prevenible en unidades de cuidados intensivos, con mayor impacto en países de ingresos bajos y medios (1,2). El consenso internacional 2024 (SCCM) redefinió sepsis pediátrica como infección con disfunción orgánica potencialmente mortal y desarrolló la escala Phoenix con base en grandes bases de datos multinacionales, mostrando mejor discriminación pronóstica que criterios históricos basados en SIRS (3).

En el estudio de derivación y validación de Phoenix (cohortes retrospectivas multicéntricas), la puntuación ≥2 identificó sepsis asociada a mayor mortalidad hospitalaria, con AUROC aproximada de 0.80–0.82 para mortalidad y mejor rendimiento frente a IPSCC 2005 (3). Metodológicamente, fue un diseño observacional de alta muestra con validación externa, útil para extrapolación pero con heterogeneidad entre sistemas sanitarios.

Un análisis secundario internacional mostró que la categoría de sepsis “SIRS-negativa” conservó mortalidad clínicamente relevante, lo que evidencia que la fisiopatología de disfunción orgánica supera la sensibilidad del enfoque inflamatorio clásico (4). A diferencia de series unicéntricas, estos estudios priorizan validez externa, aunque con menor control de variaciones locales de práctica clínica.

En Latinoamérica, reportes observacionales en UCIP describen mortalidad por sepsis pediátrica entre 10% y 25%, con variabilidad por acceso a soporte avanzado, oportunidad diagnóstica y carga de comorbilidad (5,6). Varios de estos trabajos usan diseños prospectivos de cohorte o registros institucionales, con mejor calidad temporal de datos, pero con menor tamaño muestral que estudios globales.

Estudios de modelos pronósticos en sepsis pediátrica comparan escalas de disfunción orgánica y muestran que puntuaciones basadas en falla multiorgánica predicen mejor mortalidad a corto plazo que criterios clínicos aislados (7). Estas publicaciones emplean regresión logística y curvas ROC, metodologías replicables para evaluar el rendimiento de Phoenix en un hospital específico.

En Guatemala, la evidencia publicada sobre validación local de Phoenix es limitada y predomina información de carga asistencial más que de desempeño pronóstico; por ello, existe una brecha entre recomendaciones internacionales y decisión clínica local basada en datos propios (8).

A escala global, la sepsis causa millones de casos pediátricos anuales y concentra mayor mortalidad en África, Asia y América Latina por inequidades de acceso a cuidados críticos (1,2). En contraste, en el Hospital General del IGSS de Quetzaltenango se dispone de UCIP y pruebas para estimar disfunción orgánica al ingreso, pero sin validación formal de Phoenix para mortalidad a 30 días. Esta diferencia entre carga global y evidencia local justifica medir la asociación en el contexto institucional. Pregunta de investigación: ¿Cuál es la asociación entre la puntuación de Sepsis Phoenix calculada al ingreso y la mortalidad a 30 días en pacientes con sepsis pediátrica admitidos al Hospital General del IGSS de Quetzaltenango? La pregunta es factible, interesante, novedosa localmente, ética y relevante (criterios FINER).

= Sección II. Objetivos

== Objetivo general

Determinar la asociación de la puntuación de Sepsis Phoenix calculada al ingreso para mortalidad a 30 días en pacientes con sepsis pediátrica admitidos al Hospital General del IGSS de Quetzaltenango.

== Objetivos específicos

- Describir las características clínicas, demográficas y de laboratorio de los pacientes con sepsis pediátrica incluidos durante el período de estudio.
- Estimar la frecuencia de mortalidad a 30 días en la cohorte y según categorías de puntuación Phoenix al ingreso.
- Comparar el riesgo de mortalidad a 30 días entre estratos de puntuación Phoenix mediante medidas de asociación.
- Evaluar el desempeño pronóstico de la escala Phoenix para mortalidad a 30 días mediante discriminación (curva ROC/AUC) y puntos de corte clínicamente útiles.
- Ajustar la asociación entre puntuación Phoenix y mortalidad a 30 días por posibles variables de confusión clínicamente relevantes.

= Sección III. Población y métodos

Se propone un estudio observacional analítico, de cohorte prospectiva, en la UCIP del Hospital General del IGSS de Quetzaltenango. La población fuente estará compuesta por pacientes pediátricos (1 mes a <18 años) admitidos con sospecha o confirmación de infección y diagnóstico clínico de sepsis durante el período definido del protocolo. La muestra será no probabilística, consecutiva, incluyendo todos los casos elegibles hasta completar el tiempo de reclutamiento.

Se incluirán pacientes con datos mínimos para calcular la puntuación Phoenix al ingreso y seguimiento vital hasta 30 días. Se excluirán reingresos del mismo episodio, expedientes incompletos para la variable de desenlace o traslados sin posibilidad de seguimiento. Variables a estudiar: mortalidad a 30 días (respuesta principal), puntuación Phoenix total y por dominios (exposición principal), edad, sexo, comorbilidades, foco infeccioso, necesidad de ventilación mecánica, uso de vasoactivos, lactato y otros parámetros clínicos de gravedad.

Hipótesis de investigación: a mayor puntuación Phoenix al ingreso, mayor probabilidad de mortalidad a 30 días. Hipótesis nula: no existe asociación entre la puntuación Phoenix y mortalidad a 30 días. La recolección de datos se realizará con ficha estandarizada y base electrónica anonimizada, a partir de expediente clínico, hoja de ingreso a UCIP y resultados de laboratorio del ingreso.

El análisis incluirá estadística descriptiva, comparación bivariada según desenlace, estimación de OR o RR con intervalos de confianza al 95%, y modelo multivariable (regresión logística) para ajustar confusión. Se calculará desempeño pronóstico con curva ROC y AUC; se explorará calibración del modelo cuando corresponda. Se considerará significancia estadística con p < 0.05.

En ética, se solicitará aval del comité correspondiente, resguardo de confidencialidad mediante codificación irreversible, uso exclusivo académico de la información y minimización de riesgos por tratarse de estudio observacional sin intervención adicional al manejo habitual.

= Sección IV. Alcances

El alcance del estudio es correlacional-analítico con orientación pronóstica. Permitirá cuantificar la magnitud de la asociación entre la puntuación Phoenix al ingreso y la mortalidad a 30 días en una cohorte pediátrica crítica local, aportando evidencia útil para toma de decisiones clínicas, estratificación temprana de riesgo y priorización de recursos en UCIP.

Como valor principal, generará validación contextual en el Hospital General del IGSS de Quetzaltenango, donde la carga de enfermedad y dinámica asistencial pueden diferir de cohortes internacionales. Sus limitaciones esperadas incluyen posible sesgo de selección por muestreo consecutivo en un solo centro, tamaño muestral condicionado al flujo de casos y potencial confusión residual por variables no medidas, por lo que los resultados deben interpretarse como evidencia institucional para futuras validaciones multicéntricas.

= Sección V. Referencias bibliográficas

#enum(
  [Fleischmann-Struzek C, Goldfarb DM, Schlattmann P, Schlapbach LJ, Reinhart K, Kissoon N. The global burden of paediatric and neonatal sepsis: a systematic review. #em[Lancet Respir Med]. 2018;6(3):223-230.],
  [Rudd KE, Johnson SC, Agesa KM, et al. Global, regional, and national sepsis incidence and mortality, 1990-2017. #em[Lancet]. 2020;395(10219):200-211.],
  [Schlapbach LJ, Watson RS, Sorce LR, et al. International consensus criteria for pediatric sepsis and septic shock (Phoenix). #em[JAMA]. 2024;331(8):675-694.],
  [Sorce LR, Cifra CL, Schlapbach LJ, et al. SIRS-negative pediatric sepsis and outcomes under organ dysfunction-based definitions. #em[Crit Care Med]. 2024;52(6):e321-e330.],
  [Carcillo JA, Halstead ES, Hall MW, et al. Three hypothetical inflammation pathobiology phenotypes and pediatric sepsis-induced multiple organ failure outcome. #em[Pediatr Crit Care Med]. 2017;18(6):513-523.],
  [Weiss SL, Fitzgerald JC, Pappachan J, et al. Global epidemiology of pediatric severe sepsis: the SPROUT study. #em[Am J Respir Crit Care Med]. 2015;191(10):1147-1157.],
  [Matics TJ, Sanchez-Pinto LN. Adaptation and validation of a pediatric sequential organ failure assessment score and mortality prediction. #em[JAMA Pediatr]. 2017;171(10):e172352.],
  [Organización Panamericana de la Salud. Sepsis: panorama regional y respuesta de los sistemas de salud en las Américas. Washington, DC: OPS; 2023.],
)
