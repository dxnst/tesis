= Material y métodos

== Diseño del estudio

Estudio observacional, analítico, de cohorte prospectiva.

== Lugar y período de estudio

El estudio se realizará en la Unidad de Cuidados Intensivos Pediátricos (UCIP) del hospital sede, durante un período de 12 meses.

== Población de estudio

=== Población objetivo
Pacientes pediátricos de 1 mes a 17 años de edad con diagnóstico de sepsis.

=== Población accesible
Pacientes pediátricos de 1 mes a 17 años con diagnóstico de sepsis ingresados en la UCIP del hospital sede durante el período de estudio.

== Criterios de selección

=== Criterios de inclusión
- Edad entre 1 mes y 17 años cumplidos.
- Diagnóstico de sepsis definido como infección sospechada o confirmada con puntaje Phoenix ≥ 2 @schlapbach2024.
- Ingreso a la UCIP durante el período de estudio.
- Consentimiento informado firmado por el padre, madre o tutor legal.

=== Criterios de exclusión
- Pacientes con orden de limitación del esfuerzo terapéutico al ingreso.
- Pacientes con reingreso a UCIP durante el mismo período de hospitalización (se considerará solo el primer ingreso).
- Pacientes trasladados de otra UCIP con más de 24 horas de estancia en la unidad de origen.

=== Criterios de eliminación
- Pacientes con datos incompletos que impidan el cálculo del puntaje Phoenix al ingreso.
- Pérdida del seguimiento antes de completar los 30 días (sin poder determinar el estado vital).
- Retiro del consentimiento informado.

== Tamaño de muestra

El tamaño de muestra se calculará mediante la fórmula para estimar el área bajo la curva ROC, considerando:
- AUC esperada: 0.80 (basado en la validación original de la escala Phoenix @sanchez2024phoenix)
- AUC bajo la hipótesis nula: 0.50
- Error tipo I (α): 0.05
- Error tipo II (β): 0.20 (potencia del 80%)
- Razón de no eventos a eventos: estimada según la mortalidad esperada de la institución

Se estima que se requerirán aproximadamente 150--200 pacientes, considerando una mortalidad esperada del 15--20% y un 10% de pérdidas en el seguimiento.

== Variables del estudio

=== Variable independiente principal
*Puntaje de la escala Phoenix Sepsis Score al ingreso*
- Definición conceptual: Puntuación compuesta que cuantifica la disfunción orgánica en cuatro sistemas (respiratorio, cardiovascular, coagulación y neurológico) en pacientes pediátricos con infección.
- Definición operacional: Suma de los puntajes de los cuatro componentes de la escala Phoenix, calculada con los datos obtenidos en las primeras 24 horas de ingreso a UCIP.
- Tipo de variable: Cuantitativa discreta.
- Escala de medición: De razón (rango: 0--13 puntos).

=== Variable dependiente principal
*Mortalidad a 30 días*
- Definición conceptual: Muerte del paciente por cualquier causa dentro de los 30 días posteriores al ingreso a UCIP.
- Definición operacional: Estado vital del paciente a los 30 días del ingreso a UCIP, determinado por revisión de expediente clínico o contacto telefónico.
- Tipo de variable: Cualitativa nominal dicotómica.
- Categorías: Vivo / Fallecido.

=== Variables secundarias

#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: left,
    table.header(
      [*Variable*], [*Tipo*], [*Escala*], [*Categorías/Unidades*],
    ),
    [Edad], [Cuantitativa continua], [De razón], [Meses],
    [Sexo], [Cualitativa nominal], [Nominal], [Masculino / Femenino],
    [Peso], [Cuantitativa continua], [De razón], [Kilogramos],
    [Diagnóstico infeccioso], [Cualitativa nominal], [Nominal], [Según foco infeccioso],
    [Microorganismo aislado], [Cualitativa nominal], [Nominal], [Según cultivo],
    [Componente respiratorio Phoenix], [Cuantitativa discreta], [De razón], [0--3 puntos],
    [Componente cardiovascular Phoenix], [Cuantitativa discreta], [De razón], [0--6 puntos],
    [Componente coagulación Phoenix], [Cuantitativa discreta], [De razón], [0--2 puntos],
    [Componente neurológico Phoenix], [Cuantitativa discreta], [De razón], [0--2 puntos],
    [Choque séptico], [Cualitativa nominal], [Nominal], [Sí / No],
    [Ventilación mecánica], [Cualitativa nominal], [Nominal], [Sí / No],
    [Días de estancia en UCIP], [Cuantitativa discreta], [De razón], [Días],
    [Comorbilidades], [Cualitativa nominal], [Nominal], [Según tipo],
  ),
  caption: [Variables secundarias del estudio.],
) <tab-variables>

== Procedimiento de recolección de datos

+ *Identificación de pacientes:* Se realizará vigilancia diaria de los ingresos a UCIP para identificar pacientes con infección sospechada o confirmada.

+ *Evaluación de elegibilidad:* Se verificarán los criterios de selección y se calculará el puntaje Phoenix al ingreso.

+ *Obtención de consentimiento:* Se explicará el estudio al padre, madre o tutor legal y se obtendrá el consentimiento informado por escrito.

+ *Recolección de datos al ingreso:* Se registrarán las variables demográficas, clínicas y de laboratorio necesarias para el cálculo del puntaje Phoenix y la caracterización del paciente.

+ *Cálculo del puntaje Phoenix:* Se aplicará la escala Phoenix Sepsis Score utilizando los valores más alterados de las primeras 24 horas de ingreso a UCIP.

+ *Seguimiento:* Se realizará seguimiento del paciente durante 30 días para determinar el estado vital. En caso de egreso hospitalario antes de los 30 días, se realizará contacto telefónico para confirmar el estado vital.

+ *Registro de datos:* Los datos se capturarán en una hoja de recolección diseñada específicamente para el estudio y posteriormente se ingresarán a una base de datos electrónica.

== Análisis estadístico

El análisis estadístico se realizará con los siguientes componentes:

=== Estadística descriptiva
- Variables cuantitativas: mediana y rango intercuartílico (distribución no normal esperada) o media y desviación estándar (distribución normal).
- Variables cualitativas: frecuencias absolutas y porcentajes.
- Normalidad evaluada mediante prueba de Shapiro-Wilk.

=== Estadística inferencial
- *Comparación entre grupos (sobrevivientes vs. no sobrevivientes):*
  - Variables cuantitativas: prueba U de Mann-Whitney o t de Student según distribución.
  - Variables cualitativas: prueba de chi-cuadrada o prueba exacta de Fisher según las condiciones de aplicación.

- *Análisis del rendimiento pronóstico:*
  - Curva ROC para el puntaje Phoenix total y mortalidad a 30 días @hanley1982roc.
  - Área bajo la curva (AUC) con intervalo de confianza al 95% @delong1988roc.
  - Punto de corte óptimo determinado mediante el índice de Youden.
  - Sensibilidad, especificidad, valor predictivo positivo, valor predictivo negativo, razón de verosimilitud positiva y razón de verosimilitud negativa en el punto de corte óptimo.

=== Nivel de significancia
Se considerará un valor de p < 0.05 como estadísticamente significativo. Todos los análisis se realizarán con el software estadístico R (versión 4.3 o superior) y/o SPSS (versión 26 o superior).

== Consideraciones éticas

El presente estudio se apegará a los principios éticos establecidos en:
- La Declaración de Helsinki de la Asociación Médica Mundial (versión 2013).
- La Ley General de Salud en materia de investigación para la salud (México).
- Las Normas de Buenas Prácticas Clínicas (ICH-GCP).

=== Clasificación del riesgo
El estudio se clasifica como investigación con riesgo mínimo, dado que se trata de un estudio observacional que no implica intervenciones adicionales al manejo estándar del paciente. Los datos clínicos y de laboratorio utilizados para el cálculo del puntaje Phoenix se obtienen de forma rutinaria como parte del manejo habitual de los pacientes con sepsis en UCIP.

=== Consentimiento informado
Se obtendrá consentimiento informado por escrito del padre, madre o tutor legal de cada participante. En pacientes mayores de 8 años, se obtendrá además el asentimiento informado del menor.

=== Confidencialidad
Los datos de los participantes serán manejados de forma confidencial, utilizando un sistema de codificación numérica que impida la identificación directa de los pacientes. La base de datos será almacenada en un equipo con acceso restringido mediante contraseña.

=== Aprobación del comité de ética
El protocolo será sometido a revisión y aprobación por el Comité Local de Investigación y Ética en Investigación en Salud de la institución sede previo al inicio de la recolección de datos.
