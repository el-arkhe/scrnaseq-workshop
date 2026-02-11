# Taller scRNA-seq
### El Arkhe · Talleres Multiomics

Este repositorio contiene el material del **Taller de análisis de single-cell RNA sequencing (scRNA-seq)** 

<p align="center">
  <img src="docs/images/intro.png" alt="Introducción a scRNA-seq. Esquema general del flujo de análisis de datos">
</p>

El contenido está diseñado para formación académica y técnica, con énfasis en:
- comprensión conceptual del análisis single-cell
- reproducibilidad
- buenas prácticas computacionales
- lectura crítica de datos y resultados

---

## Estructura (en construcción)

- `data/` — datasets de ejemplo  
- [`scripts/` - Codigo R] (/scripts/README.md)  
- [`docs/` — material teórico y guías](/docs/README.md)  
- `environment/` — entornos reproducibles  

---

<!--

## Instalación (recomendada) con mamba

- mamba env create -f environment.yml
- mamba activate elarkhe-seurat

### Instalar Seurat dentro del entorno (paso crítico)

Una vez activado el entorno:

- R -q -e 'install.packages("Seurat", repos="https://cloud.r-project.org")'

-->

## Autora y curaduría
**Cyntia S. Cardinault**  
GitHub: https://github.com/cyntsc  

Este repositorio es mantenido por la autora en representación de **El Arkhe**.

Si utiliza material del taller, código o recursos asociados en su investigación, enseñanza u obras derivadas, por favor cítelo de la siguiente manera.

### Cita preferida

Cynthia S. Cardinault. *El Arkhe: Single-Cell RNA-seq Workshop*.  
GitHub repository: https://github.com/<cyntsc>/<scrnaseq-workshop>  
2026.

Un archivo de citación legible por máquina está disponible en este repositorio:

- [`CITATION.cff`](./CITATION.cff)

GitHub generará automáticamente formatos de citación (BibTeX, APA, etc.) desde este archivo a través del botón **"Cite this repository"**.


### Referencias relacionadas

Si utiliza datos, métodos o herramientas específicas presentadas en este taller, por favor cite también las publicaciones primarias correspondientes (por ejemplo, Seurat, Scanpy, edgeR, 10x Genomics Cell Ranger), como se indica a lo largo de los materiales del taller.


## Acceso a datos

Los datos que se utilizan en este taller son de acceso publico. Ir a  [Acceso a datos de práctica](docs/04_procesamiento_10Xgenomics_cloud.md)

## Estado del proyecto
🚧 Repositorio en desarrollo  
El contenido se irá liberando progresivamente conforme a los talleres y ediciones del curso.

---

© El Arkhe · Talleres Multiomics
