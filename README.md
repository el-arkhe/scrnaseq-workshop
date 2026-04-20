# Taller de análisis de datos de expresión en célula única (scRNA-seq)

### El Arkhe · MultiOmics

Análisis bioinformático paso a paso en datos **scRNA-seq** utilizando datos públicos y herramientas de vanguardia para entornos en **R con Seurat v5**.

El taller está orientado a comprender el flujo completo de análisis desde el procesamiento de archivos **FASTQ** hasta la **identificación de tipos celulares**.

</p>

---

### Tech Stack

<p align="center">

<img src="https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white">
<img src="https://img.shields.io/badge/Seurat v5-4B8BBE?style=for-the-badge">
<img src="https://img.shields.io/badge/Cell Ranger 10x_Genomics-F47C20?style=for-the-badge">
<img src="https://img.shields.io/badge/Single--Cell RNAseq-8E44AD?style=for-the-badge">
<img src="https://img.shields.io/badge/Linux-Bioinformatics-FCC624?style=for-the-badge&logo=linux&logoColor=black">

</p>

---

<p align="center">
  <img src="docs/images/intro.png" alt="Introducción a scRNA-seq. Esquema general del flujo de análisis de datos">
</p>

El taller sigue el flujo estándar aplicado a estudios modernos de transcriptómica a nivel de célula única.

| Día | Tema | Resultado |
|----|----|----|
| Día 1 | Introducción a scRNA-seq y procesamiento con Cell Ranger | matriz de expresión |
| Día 2 | Control de calidad y filtrado de células | dataset limpio |
| Día 3 | Integración de muestras y corrección de efectos batch | dataset integrado |
| Día 4 | Métodos de clustering y visualización | poblaciones celulares |
| Día 5 | Anotación celular e interpretación biológica | interpretación biológica |

Duración total: **20 horas**


El contenido está diseñado para formación técnica con énfasis en:

- Comprensión conceptual del análisis scRNA-seq basado en tecnología `10x Genomics 3′`
- Comprensión del flujo de trabajo de `Cell Ranger`
- Identificación, selección y exploración de colecciones de datos
- Procesamiento de datos: control de calidad, filtrado, clustering e identificación de tipos celulares
- Identificación de genes marcadores
- Lectura crítica de resultados
- Reproducibilidad de prácticas computacionales
- Uso de referencias bibliográficas relevantes

---

### Acceso rápido al contenido

- [`Indice del Taller`](/docs/README.md) — Material teórico, guías y ejercicios de práctica.
- [`Environment`](/docs/software_setup.md) — Entorno reproducible.
- [`Código (R / Bash / Python)`](/scripts/README.md) — Scripts R / Bash / Python
- [`Datos single-cell`](/data/README.md) — Acceso a scRNA-seq datasets
- [`Colaboradores / Estudiantes`](colaboradores.md) — Ediciones del taller, colaboradores y estudiantes

---

### Clonar repositorio

[`Github repo`](docs/main_docs/09_github_repo.md)

---

### Autora y curaduría
**Cynthia Soto Cardinault**  

Este repositorio es mantenido por la autora en representación de **El Arkhe · MultiOmics**.

Si utiliza material del taller, código o recursos asociados en su investigación, enseñanza u obras derivadas, por favor cítelo de la siguiente manera.

### Cita preferida

Cynthia Soto Cardinault. *El Arkhe: Single-Cell RNA-seq Workshop*.  

Un archivo de citación legible por máquina está disponible en este repositorio:

- [`CITATION.cff`](./CITATION.cff)

GitHub generará automáticamente formatos de citación (BibTeX, APA, etc.) desde este archivo a través del botón **"Cite this repository"**.


### Referencias relacionadas

Si utiliza datos, métodos o herramientas específicas presentadas en este taller, por favor cite también las publicaciones primarias correspondientes (por ejemplo, Seurat, Scanpy, edgeR, 10x Genomics Cell Ranger), como se indica a lo largo de los materiales del taller.

---
![Visitors](https://visitor-badge.laobi.icu/badge?page_id=el-arkhe.scrnaseq-workshop)

<p style="text-align:center">
© 2026 El Arkhe MultiOmics · México
</p>

