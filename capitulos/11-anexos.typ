= Anexos

== Anexo A: Escala Phoenix Sepsis Score

#figure(
  table(
    columns: (auto, auto, auto),
    inset: 8pt,
    align: left,
    table.header(
      [*Sistema orgánico*], [*Criterio*], [*Puntos*],
    ),
    table.cell(rowspan: 4)[*Respiratorio*\ (0--3 puntos)],
    [PaO#sub[2]/FiO#sub[2] o SpO#sub[2]/FiO#sub[2] ≥ criterio sin VM], [0],
    [PaO#sub[2]/FiO#sub[2] o SpO#sub[2]/FiO#sub[2] < criterio sin VM], [1],
    [PaO#sub[2]/FiO#sub[2] o SpO#sub[2]/FiO#sub[2] < criterio con VM], [2--3],

    table.cell(rowspan: 4)[*Cardiovascular*\ (0--6 puntos)],
    [Sin vasoactivos, PAM normal, lactato normal], [0],
    [1 vasoactivo O hipotensión para la edad O lactato 5--10.9 mmol/L], [1--2],
    [≥ 2 vasoactivos O lactato ≥ 11 mmol/L], [3--4],
    [Combinaciones de vasoactivos + hipotensión + lactato elevado], [5--6],

    table.cell(rowspan: 3)[*Coagulación*\ (0--2 puntos)],
    [Plaquetas ≥ 100,000 e INR < 1.3 y D-dímero ≤ 2 mg/L], [0],
    [Plaquetas < 100,000 O INR ≥ 1.3 O D-dímero > 2 mg/L], [1],
    [Plaquetas < 100,000 + INR ≥ 1.3 + D-dímero > 2 mg/L], [2],

    table.cell(rowspan: 3)[*Neurológico*\ (0--2 puntos)],
    [Glasgow ≥ 11], [0],
    [Glasgow ≤ 10], [1],
    [Pupilas fijas bilateralmente], [2],
  ),
  caption: [Componentes de la escala Phoenix Sepsis Score (resumen adaptado).],
) <tab-phoenix-score>

#v(0.5cm)
#text(size: 10pt)[
  *Nota:* Esta tabla es un resumen adaptado. Consultar la publicación original para los criterios completos y los rangos específicos por edad @schlapbach2024 @sanchez2024phoenix.
]

#v(0.5cm)
*Interpretación:*
- *Sepsis pediátrica:* Infección sospechada o confirmada + puntaje Phoenix ≥ 2.
- *Choque séptico:* Sepsis + componente cardiovascular ≥ 1.

== Anexo B: Hoja de recolección de datos

#v(0.5cm)
#align(center)[*HOJA DE RECOLECCIÓN DE DATOS*]
#v(0.3cm)

*Datos de identificación*
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  [Folio: \_\_\_\_\_\_\_\_\_\_], [Fecha de ingreso a UCIP: \_\_/\_\_/\_\_\_\_],
  [Edad (meses): \_\_\_\_\_\_], [Sexo: M ☐  F ☐],
  [Peso (kg): \_\_\_\_\_\_], [Talla (cm): \_\_\_\_\_\_],
)

#v(0.3cm)
*Datos clínicos*
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  [Foco infeccioso: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_], [Microorganismo: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_],
  [Comorbilidades: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_], [Ventilación mecánica: Sí ☐  No ☐],
)

#v(0.3cm)
*Escala Phoenix Sepsis Score*
#table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: left,
  table.header([*Componente*], [*Datos*], [*Puntaje*]),
  [Respiratorio], [PaO#sub[2]/FiO#sub[2]: \_\_\_ SpO#sub[2]/FiO#sub[2]: \_\_\_ VM: Sí☐ No☐], [\_\_/ 3],
  [Cardiovascular], [PAM: \_\_\_ Lactato: \_\_\_ Vasoactivos: \_\_\_\_\_\_\_\_\_], [\_\_/ 6],
  [Coagulación], [Plaquetas: \_\_\_ INR: \_\_\_ D-dímero: \_\_\_], [\_\_/ 2],
  [Neurológico], [Glasgow: \_\_\_ Pupilas fijas: Sí☐ No☐], [\_\_/ 2],
  table.cell(colspan: 2)[*PUNTAJE TOTAL*], [*\_\_/ 13*],
)

#v(0.3cm)
*Seguimiento a 30 días*
#table(
  columns: (1fr,),
  inset: 8pt,
  [Estado vital a 30 días: Vivo ☐  Fallecido ☐  Fecha de defunción: \_\_/\_\_/\_\_\_\_],
  [Días de estancia en UCIP: \_\_\_\_\_\_],
  [Método de verificación: Expediente ☐  Contacto telefónico ☐],
)

== Anexo C: Cronograma de actividades

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    inset: 6pt,
    align: center,
    table.header(
      [*Actividad*], [*Mes 1--2*], [*Mes 3--4*], [*Mes 5--8*], [*Mes 9--12*], [*Mes 13--14*], [*Mes 15--16*],
    ),
    [Revisión bibliográfica], [✓], [✓], [], [], [], [],
    [Elaboración de protocolo], [✓], [✓], [], [], [], [],
    [Aprobación por comité de ética], [], [✓], [✓], [], [], [],
    [Recolección de datos], [], [], [✓], [✓], [], [],
    [Análisis estadístico], [], [], [], [✓], [✓], [],
    [Redacción de resultados], [], [], [], [], [✓], [],
    [Discusión y conclusiones], [], [], [], [], [✓], [✓],
    [Revisión y entrega final], [], [], [], [], [], [✓],
  ),
  caption: [Cronograma de actividades.],
) <tab-cronograma>

== Anexo D: Consentimiento informado

#align(center)[*CARTA DE CONSENTIMIENTO INFORMADO*]
#v(0.3cm)

#text(size: 10pt)[
  *Título del estudio:* "Valor predictivo de la escala Phoenix Sepsis Score en mortalidad a 30 días en pacientes pediátricos con sepsis ingresados en la unidad de cuidados intensivos pediátricos"

  *Investigador principal:* [Nombre del investigador]

  *Sede:* [Nombre de la institución]

  Por medio de la presente, se le invita a que su hijo(a) participe en un estudio de investigación. Antes de decidir si participa o no, debe conocer y comprender la siguiente información:

  *Propósito del estudio:* Evaluar qué tan bien una escala médica llamada "Phoenix" puede predecir el pronóstico de los niños con infecciones graves (sepsis) que requieren cuidados intensivos.

  *Procedimientos:* Este estudio es observacional, lo que significa que no se realizará ningún procedimiento adicional a su hijo(a). Utilizaremos información de los estudios de laboratorio y la evaluación clínica que se realizan de forma habitual como parte de su atención médica. Daremos seguimiento al estado de salud de su hijo(a) durante 30 días.

  *Riesgos:* Este estudio no implica riesgos adicionales, ya que no se realizan procedimientos ni intervenciones adicionales al tratamiento habitual.

  *Beneficios:* Aunque su hijo(a) no recibirá un beneficio directo, la información obtenida contribuirá a mejorar la atención de futuros pacientes pediátricos con infecciones graves.

  *Confidencialidad:* La información de su hijo(a) será manejada de forma confidencial. No se publicarán datos que permitan su identificación.

  *Participación voluntaria:* La participación es completamente voluntaria. Puede retirar su consentimiento en cualquier momento sin que esto afecte la atención médica de su hijo(a).

  #v(1cm)
  #line(length: 60%)
  Nombre y firma del padre/madre/tutor #h(2cm) Fecha

  #v(0.5cm)
  #line(length: 60%)
  Nombre y firma del investigador #h(2cm) Fecha

  #v(0.5cm)
  #line(length: 60%)
  Nombre y firma del testigo 1 #h(2cm) Fecha

  #v(0.5cm)
  #line(length: 60%)
  Nombre y firma del testigo 2 #h(2cm) Fecha
]
