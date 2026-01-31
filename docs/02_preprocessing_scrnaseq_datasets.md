# Preprocesamiento de datos scRNA-seq con Cell Ranger

Para experimentos de **single-cell RNA sequencing (scRNA-seq)** generados con la plataforma **10x Genomics Chromium**, el flujo de trabajo estándar de preprocesamiento se realiza utilizando **Cell Ranger**.

**Cell Ranger** es un conjunto de herramientas bioinformáticas diseñado para procesar datos de secuenciación crudos y generar matrices de expresión génica listas para análisis downstream (por ejemplo, en Seurat o Scanpy).

Este paso corresponde al **análisis primario** y es crítico para garantizar:
- Identificación correcta de células reales  
- Asignación precisa de barcodes y UMIs  
- Métricas de calidad confiables  



## ¿Qué es Cell Ranger?

Cell Ranger procesa datos provenientes de experimentos scRNA-seq de 10x Genomics y automatiza tareas clave como:

- Conversión de archivos BCL a FASTQ  
- Alineación a un reference genome / transcriptome  
- Cell calling  
- Conteo de UMIs por gen y por célula  
- Generación de reportes de calidad  

Documentación oficial:  
https://www.10xgenomics.com/support/software/cell-ranger/latest/getting-started  



## Flujo general de Cell Ranger

El flujo de trabajo típico de Cell Ranger se compone de varios comandos, cada uno con un propósito específico:

| Paso | Comando | Función principal | Output |
|----|--------|------------------|--------|
| 1 | `cellranger mkfastq` | Convierte archivos BCL en FASTQ y realiza demultiplexing por muestra y lane | FASTQ files |
| 2 | `cellranger count` | Pipeline principal: alineación, identificación de barcodes y UMIs, cell calling y conteo | Gene-Barcode Matrix, BAM, Web Summary HTML, `.cloupe` |
| 3 | `cellranger aggr` | Agrega múltiples corridas independientes en una sola matriz | Aggregated Gene-Barcode Matrix |



## Paso 1: `cellranger mkfastq`

Este comando:
- Toma como entrada archivos **BCL** generados por el secuenciador
- Realiza **demultiplexing**
- Produce archivos **FASTQ comprimidos**

Output principal:
- FASTQ files (R1, R2, I1)

Este paso es equivalente, conceptualmente, a `bcl2fastq`, pero optimizado para flujos de trabajo de 10x Genomics.



## Paso 2: `cellranger count`

Este es el **pipeline central** de Cell Ranger.

Funciones principales:
- Alineación de lecturas a un reference genome/transcriptome  
- Identificación de **Cell Barcodes (CBs)** y **Unique Molecular Identifiers (UMIs)**  
- Filtrado de background noise  
- Conteo de moléculas por gen y por célula  

Output clave:
- **Filtered feature-barcode matrix** (H5 y MTX)
- BAM file
- Web Summary (HTML)
- Archivo `.cloupe` para exploración interactiva



## Análisis secundario incluido

Dentro de `cellranger count` y `cellranger aggr`, Cell Ranger ejecuta un **análisis secundario automático** sobre la matriz de conteos, que incluye:

### Cell Calling
- Distingue células reales de droplets vacíos

### Dimensionality Reduction
- Principal Component Analysis (PCA)
- t-SNE o UMAP

### Clustering
- K-means
- Graph-based clustering

> ⚠️ **Nota:** estos resultados son exploratorios y no sustituyen el análisis downstream detallado que se realiza en herramientas como Seurat.



## Paso 3: `cellranger aggr`

Este comando permite:
- Combinar múltiples corridas independientes
- Normalizar por profundidad de secuenciación
- Generar una **matriz agregada**

Uso típico:
- Múltiples muestras
- Diferentes lanes
- Experimentos replicados

Output:
- Aggregated Gene-Barcode Matrix
- Web Summary agregada



## Resultados (outputs) principales de Cell Ranger

El resultado central del preprocesamiento es:

- **Filtered feature-barcode matrix** (H5 o MTX)
- Reporte Web Summary con métricas de calidad

Estos outputs son la base para:
- QC downstream
- Clustering refinado
- Identificación de cell types
- Análisis diferencial

La exploración inicial puede realizarse con **Loupe Browser**, aunque el análisis formal se hace usualmente en R o Python.



## Modos de correr Cell Ranger

Cell Ranger puede ejecutarse de diferentes formas dependiendo de la infraestructura disponible:

- Local
- HPC
- Cloud

Resumen de modos de ejecución:
https://cyntsc.github.io/single_cell_RNA-seq/RunModes/



## Cell Ranger y Galaxy

Es posible ejecutar Cell Ranger dentro de **Galaxy**, pero con consideraciones importantes:

- Cell Ranger es software propietario de 10x Genomics
- Las instancias públicas de Galaxy **no siempre lo incluyen por defecto**
- Su disponibilidad depende de licencias y recursos locales

Ejemplo:
- Galaxy Australia ofrece Cell Ranger bajo **acceso controlado** mediante solicitud específica


Como alternativa dentro de entornos Galaxy, es común utilizar herramientas open-source, como **STARsolo**:

- Requiere FASTQ (R1, R2, I1)
- Produce outputs compatibles con el formato de Cell Ranger
- Facilita el análisis downstream en pipelines estándar


## Recursos de consulta

- Comenzando con Cell Ranger:  
  https://www.10xgenomics.com/support/software/cell-ranger/latest/getting-started

- Modos de ejecución Cell Ranger:  
  https://cyntsc.github.io/single_cell_RNA-seq/RunModes/

---

