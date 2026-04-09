## Módulo 1: Procesamiento de datos scRNA-seq y subsampling
## Preguntas para discusión

### Compara las condiciones sin y con subsampling en Cell Ranger y responde las siguientes preguntas

En datasets con alta saturación inicial, el subsampling moderado suele preservar la estructura global. En datasets con saturación baja, la reducción de profundidad impacta más fuertemente la detección molecular. Sin embargo no siempre es así. Análiza las siguientes preguntas:

¿El número de células detectadas cambió tras el subsampling?

¿Los clusters principales se mantienen?

¿Qué métricas del Web Summary ayudan a anticipar el impacto del subsampling?

¿Qué ocurre con la sequencing saturation al reducir depth?

¿Se observa pérdida de genes de baja expresión?


### Identificación de especificaciones técnicas

¿En qué muestras se específico `create-bam=false` y porqué?

Análiza la configuración y resultados de los donadores 3+4 con subsampling al 25%

    Cells: ?

    Median genes per cell: ?

    Median UMI counts per cell: ?

    Total genes detected: ? 

¿Porque el reporte de Cell Ranger no reporta número de clusters estimados ní resultados de expresión diferencial?

---

### 🎉 ¡Felicidades, has completado el Módulo 1!

Has dado el primer paso en el análisis de datos de **single-cell RNA-seq**.  
Ahora comprendes cómo seleccionar datasets, procesarlos con **Cell Ranger**, interpretar el **Web Summary** y evaluar el impacto del **subsampling** en los resultados.

Este módulo no solo fue técnico: sentaste las bases conceptuales para entender que en scRNA-seq no observamos células directamente, sino que inferimos su presencia a partir de evidencia molecular.

Continúa con curiosidad, espíritu crítico y atención al detalle.  
El siguiente módulo profundizará en el análisis downstream y la interpretación biológica.

¡Excelente trabajo! 👩‍🔬🧬

---

CSC. Marzo 04, 2026
