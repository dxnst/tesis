= Resultados

#text(style: "italic")[Esta sección se completará una vez finalizada la recolección y el análisis de datos del estudio.]

== Resultados esperados

Se presentarán los resultados en el siguiente orden:

=== Descripción de la población

Se describirán las características demográficas y clínicas de la cohorte de pacientes incluidos, incluyendo:
- Número total de pacientes evaluados, incluidos y excluidos (diagrama de flujo).
- Distribución por edad, sexo y peso.
- Focos infecciosos identificados y microorganismos aislados.
- Frecuencia de comorbilidades.
- Proporción de pacientes con choque séptico.
- Requerimiento de ventilación mecánica.
- Días de estancia en UCIP.

=== Mortalidad a 30 días

Se reportará la tasa de mortalidad a 30 días con su intervalo de confianza al 95%.

=== Puntaje Phoenix y sus componentes

Se presentarán los puntajes de la escala Phoenix (total y por componentes) mediante estadística descriptiva, comparando los valores entre sobrevivientes y no sobrevivientes.

#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: center,
    table.header(
      [*Variable*], [*Sobrevivientes* \ *(n = \_\_)*], [*No sobrevivientes* \ *(n = \_\_)*], [*p*],
    ),
    [Phoenix total, mediana (RIQ)], [--], [--], [--],
    [Componente respiratorio], [--], [--], [--],
    [Componente cardiovascular], [--], [--], [--],
    [Componente coagulación], [--], [--], [--],
    [Componente neurológico], [--], [--], [--],
  ),
  caption: [Comparación del puntaje Phoenix entre sobrevivientes y no sobrevivientes (plantilla).],
) <tab-phoenix-comparacion>

=== Rendimiento pronóstico

Se presentará:
- La curva ROC del puntaje Phoenix total para mortalidad a 30 días.
- El AUC con intervalo de confianza al 95%.
- El punto de corte óptimo según el índice de Youden.
- Una tabla con los indicadores de rendimiento pronóstico.

#figure(
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: left,
    table.header(
      [*Indicador*], [*Valor (IC 95%)*],
    ),
    [Área bajo la curva ROC], [-- (-- , --)],
    [Punto de corte óptimo], [--],
    [Sensibilidad], [-- (-- , --)],
    [Especificidad], [-- (-- , --)],
    [Valor predictivo positivo], [-- (-- , --)],
    [Valor predictivo negativo], [-- (-- , --)],
    [Razón de verosimilitud positiva], [-- (-- , --)],
    [Razón de verosimilitud negativa], [-- (-- , --)],
  ),
  caption: [Rendimiento pronóstico de la escala Phoenix para mortalidad a 30 días (plantilla).],
) <tab-rendimiento>
