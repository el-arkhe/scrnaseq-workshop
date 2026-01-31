# Taller scRNA-seq
### El Arkhe · Talleres Multiomics

Este repositorio contiene el material del **Taller de análisis de single-cell RNA sequencing (scRNA-seq)** 

El contenido está diseñado para formación académica y técnica, con énfasis en:
- comprensión conceptual del análisis single-cell
- reproducibilidad
- buenas prácticas computacionales
- lectura crítica de datos y resultados

---

## Autora y curaduría
**Cyntia Soto Cardinault**  
GitHub: https://github.com/cyntsc  

Este repositorio es mantenido por la autora en representación de **El Arkhe**.

---

## Estructura (en construcción)

- `notebooks/` — análisis paso a paso  
- `data/` — datasets de ejemplo  
- `scripts/` — utilidades y pipelines  
- [`docs/` — material teórico y guías](/docs/README.md)  
- `environment/` — entornos reproducibles  

---

## Instalación (recomendada) con mamba

- mamba env create -f environment.yml
- mamba activate elarkhe-seurat

### Instalar Seurat dentro del entorno (paso crítico)

Una vez activado el entorno:

- R -q -e 'install.packages("Seurat", repos="https://cloud.r-project.org")'

---

## Estado del proyecto
🚧 Repositorio en desarrollo  
El contenido se irá liberando progresivamente conforme a los talleres y ediciones del curso.

---

© El Arkhe · Talleres Multiomics
