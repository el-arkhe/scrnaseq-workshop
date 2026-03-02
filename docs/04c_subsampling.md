# Subsampling en scRNA-seq

En scRNA-seq, **subsampling** (también llamado *downsampling*) es el proceso de **tomar una fracción aleatoria de lecturas (reads)** o de **UMIs/cells** para simular un dataset con menor profundidad o menor tamaño. El objetivo es “mejorar” **evaluar sensibilidad, robustez y efectos técnicos**, o **reducir costo computacional** durante exploraciones iniciales.



## Impacto del subsampling

En general, al disminuir reads:

- ↓ `nCount_RNA` (UMIs por célula)
- ↓ `nFeature_RNA` (genes detectados por célula)
- ↓ detección de genes de baja expresión
- ↓ poder estadístico (especialmente para differential expression)

Lo que suele conservarse (si el subsampling no es extremo):

- Estructura global de clusters
- Patrones de genes altamente expresados
- Topología general en PCA/UMAP

> Nota: el subsampling agrega una capa extra de muestreo sobre un proceso ya estocástico (captura de RNA), por lo que **no será idéntico** al dataset completo, aunque puede ser un reflejo útil a nivel global.



## ¿Cuándo utilizar subsampling?

### Quieres comparar muestras con distinta profundidad (depth matching)
Si una muestra tiene muchas más lecturas por célula que otra, puede parecer “mejor” solo por mayor profundidad. Subsampling permite igualar profundidad para comparar de forma más justa.

### Benchmarking de pipelines
Quieres evaluar:
- Estabilidad de clustering
- Robustez de marcadores
- Sensibilidad a menor profundidad

Ejemplo común: 100% → 75% → 50% → 25% y comparar resultados.

### Quieres evaluar estabilidad de resultados
Si el resultado cambia drásticamente con una reducción moderada, probablemente estabas en el límite de detección o sobreinterpretando señal débil.

### Quieres una exploración rápida en datasets grandes
Para iterar parámetros (QC, HVFs, clustering) antes de correr el análisis completo.



## ¿Cuándo NO conviene?

Evita subsampling cuando:
- Necesitas detectar poblaciones raras
- Buscas genes de muy baja expresión
- Harás differential expression fino
- Tu dataset ya es de baja profundidad



## Tipos comunes de subsampling

- **Por reads**: reduce lecturas antes del conteo (impacta directamente UMIs/genes detectados).
- **Por UMIs**: reduce conteos en la matriz (aproxima menor profundidad).
- **Por cells**: selecciona un subconjunto de células (útil para rapidez, pero no simula menor profundidad).


---

## ¿Cambia el número de células?

Depende del nivel de aplicación.

| Nivel | ¿Puede cambiar el número de células detectadas? |
|-------|-----------------------------------------------|
| FASTQ + nuevo cell calling | Sí |
| Re-ejecución completa de Cell Ranger | Sí |
| Subsampling en matriz filtrada | No |

El número de células detectadas es el resultado de un modelo estadístico de *cell calling*, basado en la distribución de UMIs por barcode. Reducir reads puede hacer que barcodes marginales caigan por debajo del umbral.


## Interpretación técnica: detección celular

Una célula detectada no es una observación directa, sino una inferencia basada en:

- Distribución de UMIs
- Modelado de background (ambient RNA)
- Separación estadística entre señal y ruido
- Thresholds del algoritmo

Por lo tanto, el número de células detectadas depende de:

- Profundidad
- Ruido técnico
- Parámetros del pipeline

Reducir reads no cambia la biología subyacente, pero sí la evidencia estadística disponible.

---



## Subsampling en el Web Summary de Cell Ranger

En el **Web Summary**(https://www.10xgenomics.com/support/software/cell-ranger/7.2/analysis/cr-outputs-web-summary-count), Cell Ranger reporta métricas relacionadas con profundidad y saturación que permiten evaluar si el dataset está cerca de su límite informativo.

### Métricas relevantes

- **Mean reads per cell**
- **Median genes per cell**
- **Sequencing saturation**
- **Fraction of reads in cells**

### ¿Qué es sequencing saturation?

Es una estimación de cuántas moléculas adicionales se detectarían si se incrementara la profundidad.

- Saturación alta (ej. >70–80%) → Incrementar reads aporta poca información adicional.
- Saturación baja → Mayor profundidad podría detectar más UMIs únicos.

### Relación con subsampling

Si se realiza subsampling:

- Disminuye el mean reads per cell.
- Disminuye el median genes per cell.
- Disminuye la sequencing saturation.

El Web Summary permite anticipar el efecto del subsampling:

- Si la saturación ya es alta, reducir depth afectará poco la estructura global.
- Si la saturación es baja, la reducción impactará significativamente la detección.

---

