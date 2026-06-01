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
    #place(center + horizon, image("logo-usac2.png", width: 14cm))
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

La frecuencia de la sepsis pediátrica y su distribución geográfica muestran una carga desproporcionada en países de ingresos medios y bajos, donde la mortalidad es hasta cuatro veces superior a la de países desarrollados. @Godoy2025 El Hospital General de Quetzaltenango del Instituto Guatemalteco de Seguridad Social atiende a una población altamente vulnerable del occidente del país, aunque se cuenta con servicios de cuidados intensivos, la implementación de escalas validadas internacionalmente como Phoenix es importante. La falta de una herramienta predictiva estandarizada podría retrasar intervenciones críticas y la optimización de recursos en cuidados críticos.

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

La técnica principal será la observación clínica prospectiva y la revisión sistemática de registros médicos. Se monitorizarán ingresos en el área de emergencia y unidad de cuidados intensivos pediátricos de manera continua desde noviembre de 2026 hasta noviembre de 2027. Al identificar a un paciente que cumpla con los criterios de inclusión, se procederá a extraer la información directamente de la evaluación clínica inicial, las hojas de monitoreo de signos vitales, los reportes de laboratorio y la evolución médica en el expediente clínico físico y electrónico. El seguimiento del desenlace final se realizará mediante la revisión del estado de egreso y, de ser necesario, contacto de seguimiento a los 30 días posteriores al diagnóstico inicial.

=== Instrumento de recolección
El instrumento consistirá en una ficha de recolección de datos clínicos y puntuación Phoenix, la cual será estructurada y dividida en tres secciones fundamentales:
+ Sección A: Perfil sociodemográfico y antropométrico. Se documentará la edad, sexo biológico, estado nutricional, lugar de procedencia y presencia de comorbilidades crónicas.
+ Sección B: Parámetros fisiológicos y Escala Phoenix al diagnóstico. Datos exactos del peor valor registrado en las primeras 24 horas del diagnóstico de sepsis para calcular el puntaje de la escala Phoenix (de 0 a 13 puntos). Incluirá los siguientes sub-apartados:
  + Componente Respiratorio: Requerimiento de soporte ventilatorio (invasivo o no invasivo), saturación de oxígeno (SpO2), presión parcial de oxígeno (PaO2) y fracción inspirada de oxígeno (FiO2) para el cálculo de los índices SpO2/FiO2 o PaO2/FiO2.
  + Componente Cardiovascular: Registro de la presión arterial media, niveles de lactato sérico (mmol/L) y el uso, tipo y dosis de medicamentos vasoactivos (ej. epinefrina, norepinefrina, dopamina, dobutamina).
  + Componente de Coagulación: Resultados de laboratorio que incluyan recuento de plaquetas, índice internacional normalizado (INR), tiempo de protrombina (TP) y niveles de fibrinógeno.
  + Componente Neurológico: Evaluación del estado mental mediante la Escala de Coma de Glasgow adaptada para pediatría y evaluación de la reactividad pupilar.
+ Sección C: Desenlace clínico y seguimiento. El apartado final del instrumento estará destinado a registrar las fechas exactas de ingreso y egreso hospitalario, los días de estancia en la unidad de cuidados intensivos, la necesidad de terapias de soporte extracorpóreo y la variable dependiente principal: el estado del paciente (supervivencia o mortalidad) exactamente a los 30 días de la evaluación inicial.

== Plan de análisis
El análisis estadístico iniciará con la fase descriptiva, calculando medidas de tendencia central (media o mediana) y de dispersión (desviación estándar o rango intercuartílico) para las variables cuantitativas según su distribución de normalidad, así como frecuencias absolutas y porcentajes para las variables categóricas.  Para el análisis bivariado se empleará la prueba de Chi-cuadrado para la asociación entre puntuación Phoenix ($<4$ vs $>=4$) y mortalidad a 30 días. Se calculará el Área Bajo la Curva de Características Operativas del Receptor (AUROC) y se realizará regresión logística binaria para el cálculo de Odds Ratios (OR) con un nivel de significancia de $p < 0.05$.

== Principios éticos en la investigación
La presente investigación se regirá bajo los principios éticos internacionales dictados por la Declaración de Helsinki. Previo al inicio de la recolección de datos, el protocolo será sometido para su dictamen y aprobación por el Comité de Ética, Investigación y Docencia del IGSS. Al tratarse de un estudio observacional basado en expedientes, el riesgo físico es nulo; no obstante, se garantizará la máxima confidencialidad y anonimato de los participantes mediante la seudonimización de las bases de datos. A continuación, se detallarán los aspectos éticos considerados:

=== Respeto por las personas
Se asegurará el respeto a la autonomía de los cuidadores y los participantes al obtener el consentimiento informado previo a la participación en el estudio. En este documento se describirán claramente los objetivos de la investigación, el carácter observacional de la recolección de datos clínicos, los beneficios potenciales para la práctica médica y la ausencia de riesgos adicionales a los de su manejo clínico habitual.

=== Confidencialidad y privacidad
La privacidad de los pacientes se respetará de forma estricta. Toda la información recolectada de los registros clínicos y el monitoreo de los criterios de la escala Phoenix será tratada de manera confidencial y utilizada únicamente con fines de investigación.

=== Justicia
Se garantizará que todos los niños elegibles que ingresen al Hospital General del IGSS en Quetzaltenango tengan igualdad de oportunidades para formar parte del estudio, sin discriminación por razones de género, etnia o nivel socioeconómico. Asimismo, los resultados estarán orientados a beneficiar a la comunidad pediátrica en general, aportando evidencia que mejore la estratificación de riesgo y el pronóstico de la sepsis en el entorno local.

=== Beneficencia y no maleficencia
Este estudio no implicará intervenciones invasivas ni riesgos adicionales para los participantes. Se emplearán técnicas observacionales basadas en la revisión de expedientes y la aplicación de criterios clínicos y de laboratorio estandarizados que no alterarán el tratamiento médico ni el bienestar de los niños o sus cuidadores.

=== Categoría de riesgo
El diseño del estudio se basará en el registro de datos fisiológicos y de laboratorio obtenidos durante la atención estándar del paciente con sepsis. Al ser un estudio observacional que utilizará información generada por la práctica clínica rutinaria y no realizará intervenciones experimentales, se clasificará dentro de las normas éticas institucionales como una investigación de riesgo mínimo.

= Alcances, Valor y Limitaciones
== Alcances
El alcance de esta investigación será de tipo correlacional y explicativo, ya que no solo busca describir las características de los pacientes, sino cuantificar y evaluar el nivel de asociación entre una variable clínica predictora (Escala Phoenix) y un desenlace clínico crítico (mortalidad a los 30 días).

== Valor de la investigación
Este trabajo proporcionará la primera validación regional de los nuevos criterios Phoenix en el occidente de Guatemala, con el objetivo de identificar pacientes con alta mortalidad.

== Limitaciones
Debido al diseño, el estudio está sujeto a sesgos de información y registro secundario a historias clínicas incompletas (como la falta de medición de lactato o gases arteriales en todos los pacientes), lo cual puede subestimar la verdadera puntuación fisiológica al ingreso. Asimismo, al ser un estudio unicéntrico, la generalización de los resultados a otros hospitales puede ser limitada.

#bibliography("bib.yaml", style: "mary-ann-liebert-vancouver")
