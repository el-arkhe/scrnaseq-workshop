# Material teórico y guías

## Índice

### Día 1: Introducción y Procesamiento de Datos con Cell Ranger

- [01 Introducción a Single-Cell RNA-seq](01_introduccion_sc_rnaseq.md)
  - [Plataforma Chromium de 10x Genomics](01a_chromiun_platforms.md)
- [02 Preprocesamiento de datos scRNA-seq con Cell Ranger](02_preprocessing_scrnaseq_datasets.md)
- [03 Comprendiendo las Químicas Chromium 3′: v3.1 vs GEM-X v4](03_seleccion_datos_chromium_sc.md)

- [04 Práctica: procesamiento de datos en 10x Genomics Cloud](04_procesamiento_10Xgenomics_cloud.md)  
  En este archivo encontrarás recursos públicos para acceder y procesar datos scRNA-seq utilizando **10x Genomics on the Cloud**:
  - Datos scRNA-seq canónicos de 10x Genomics  
  - Datos snRNA-seq de habenula (cerebro humano postmortem)
- [05 GitHub: clonar y organizar el repositorio de datos](09_github_repo.md)

---

### Día 2: Contol de Calidad y filtrado de células (en desarrollo)

#### Material teórico

- Comprensión del resultado: matrices de expresión genética
- Control de calidad a través del análisis profundo de una sola muestra
  - Elegir flujo de análisis de datos: Seurat vs SingleCellExperiment
  - Celulas PBMC como modelo de aprendizaje
  - Metricas de calidad clave
  - Objeto Seurat (v5)

- Configuración del entorno R para Seurat 5
  - Requisitos del sistema
  - Instalación de los paquetes necesarios
  - Carga de bibliotecas y configuración

- Comprensión de la estructura de salida de Cell Ranger
  - Carga e inspección inicial de datos 10x

- Exploración inicial de datos
  - Por qué es importante el ARN ambiental
    - Detección estadística con EmptyDrops
    - Corrección de ARN ambiental con SoupX
  - Estimación y eliminación de la contaminación
  - Detección de dobletes con scDblFinder
    - Detección de gotas vacías con DropletUtils
    - Comprensión de los dobletes

<!--
- Carga de datos procesados en Seurat
- Exploración inicial y métricas de QC
- Filtrado basado en criterios razonados
- Normalización y reducción de dimensionalidad
- Clustering y visualización (UMAP)
- Exploración biológica preliminar
-->

---

### Día 3 (en desarrollo)

---

### Día 4 (en desarrollo)

---

### Otro material de ayuda

- [Verificar archivos con MD5 checksum](200_verify_files_checksum.md)