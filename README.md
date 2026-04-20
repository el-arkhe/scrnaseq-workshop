# Análisis de datos de célula única (scRNA-seq)

### El Arkhe · MultiOmics

Aprende a analizar datos de célula única desde archivos FASTQ hasta la identificación de tipos celulares, combinando teoría y práctica en un flujo de trabajo real.

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


## ¿Qué incluye este repositorio?
Este repositorio contiene el Día 1 (acceso abierto) del taller completo de scRNA-seq. Aquí aprenderás:
- 📦 Cómo se generan los datos de célula única, y recomendaciones para seleccionar tus datasets
- ⚙️ Procesamiento inicial con *Cell Ranger on the Cloud*
- 📊 De archivos FASTQ → matrices de expresión génica
- ☁️ Ejecución en la nube sin necesidad de cómputo avanzado

El contenido está diseñado como una introducción completa y funcional para procesamiento con datos de célula única y el pipeline de `Cell Ranger`.

## ¿Por qué empezar con este material?
La mayoría de los cursos:
- Empiezan con datos ya procesados
- Omiten la etapa crítica de generación de matrices
- Requieren experiencia previa en bioinformática

Aquí no. Este Día 1 está diseñado para que entiendas realmente como se procesan los datos.

## ¿A quién está dirigido?
- Estudiantes de biología, biotecnología o áreas afines
- Investigadores que quieren iniciar en scRNA-seq
- Personas sin experiencia previa en análisis de datos ómicos
- Usuarios que buscan entender el pipeline completo.

## ¿Qué sigue después del día 1?
El análisis de célula única comienza aquí (día 1), y continua con las siguientes etapas (día 2 en adelante):

| Día | Tema | Resultado |
|----|----|----|
| Día 1 | Introducción a scRNA-seq y procesamiento con Cell Ranger | matriz de expresión |
| Día 2 | Control de calidad y filtrado de células | dataset limpio |
| Día 3 | Integración de muestras y corrección de efectos batch | dataset integrado |
| Día 4 | Métodos de clustering y visualización | poblaciones celulares |
| Día 5 | Anotación celular e interpretación biológica | interpretación biológica |

Duración total: **20 horas**

## 🔓 Acceso al taller completo (Días 2–5)
Si ya estas registrado accede al material  a través del siguiente enlace:
https://github.com/el-arkhe/scrnaseq-workshop_portal

👉 Si deseas participar en próximas ediciones o solicitar información [Registrarse aquí](docs/registro.md)


## Filosofía de enseñanza
*El Arkhe y Colaboradores* nos enfocamos en:
- Construir criterio analítico, no solo ejecutar código
- Enseñar con datos reales
- Integrar teoría + práctica en tiempo real
- Evitar atajos que limiten la comprensión


<!--
El contenido está diseñado para formación técnica con énfasis en:

- Comprensión conceptual del análisis scRNA-seq basado en tecnología `10x Genomics 3′`
- Comprensión del flujo de trabajo de `Cell Ranger`
- Identificación, selección y exploración de colecciones de datos
- Procesamiento de datos: control de calidad, filtrado, clustering e identificación de tipos celulares
- Identificación de genes marcadores
- Lectura crítica de resultados
- Reproducibilidad de prácticas computacionales
- Uso de referencias bibliográficas relevantes
-->

## Visita rápida al temario y recursos del taller

- [`Indice del Taller`](/docs/README.md) — Material teórico, guías y ejercicios de práctica.
- [`Environment`](/docs/software_setup.md) — Entorno reproducible.
- [`Código (R / Bash / Python)`](/scripts/README.md) — Scripts R / Bash / Python
- [`Datos single-cell`](/data/README.md) — Acceso a scRNA-seq datasets
- [`Colaboradores / Estudiantes`](colaboradores.md) — Ediciones del taller, colaboradores y estudiantes


### Clonar repositorio

[`Github repo`](docs/main_docs/09_github_repo.md)


## Autora y curaduría
*Dra. Cynthia Soto Cardinault*

Este repositorio es mantenido por la autora en representación de *El Arkhe MultiOmics*

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

