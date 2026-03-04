# Material teórico y guías

## Índice

### Día 1: Introducción y Procesamiento de Datos con Cell Ranger

- [01 Introducción a scRNA-seq](main_docs/01_introduccion_sc_rnaseq.md)
  - [Plataforma Chromium de 10x Genomics](main_docs/01a_chromiun_platforms.md)

- [02 Preprocesamiento de datos scRNA-seq con Cell Ranger](main_docs/02_preprocessing_scrnaseq_datasets.md)
  - [Comprendiendo las Químicas Chromium 3′: v3.1 vs GEM-X v4](main_docs/02a_seleccion_datos_chromium_sc.md)

- [03 Práctica: procesamiento de datos scRNA-seq en 10x Genomics on the Cloud](main_docs/03_procesamiento_10Xgenomics_cloud.md)  
  En este archivo encontrarás enlaces a datos scRNA-seq públicos de `10x Genomics Datasets` u otros disponibles para su procesamiento con `Cell Ranger`

    Recursos de apoyo:
  - [Descarga y carga de datos FASTQ desde `10x Genomics Datasets` a `10x Genomics on the Cloud`](main_docs/03a_upload_files.md)
  - [Descarga de datos procesados en `Cell Ranger on the Cloud`](main_docs/03b_download_10X_cloud.md)

- [04 Submuestreo (Subsampling) con flujos de trabajo `Cell Ranger`](main_docs/04_subsampling.md)
  - [Análisis de resultados con y sin submuestreo](main_docs/04a_subsampling.md)  

- [05 Práctica: Análisis comparativo de resultados de submuestreo](main_docs/05_cell_ranger_analisis_comparativo_subsampling.md)  


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

- [Verificar archivos con MD5 checksum](main_docs/200_verify_files_checksum.md)