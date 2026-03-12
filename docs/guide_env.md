# Preparación inicial del entorno de trabajo en R

Este documento describe los **primeros pasos para preparar el entorno computacional** que utilizaremos a lo largo del taller.

El objetivo es asegurar que todas las personas participantes cuenten con una **configuración mínima común y reproducible** antes de ejecutar los scripts del directorio `scripts/`.

Para lograrlo utilizaremos un **entorno Conda reproducible** que instala R, Seurat y los paquetes necesarios para análisis de **single-cell RNA-seq**.


## Entorno computacional del taller

El taller utiliza un entorno reproducible definido en:
[environment-minimal-seurat5.yml](../environment-minimal-seurat5.yml)


Este archivo instala automáticamente:

- **R 4.4**
- **Seurat v5**
- paquetes del ecosistema **tidyverse**
- paquetes de **Bioconductor para análisis single-cell**
- herramientas para **visualización, QC y análisis pseudobulk**

El uso de este entorno garantiza que **todos los participantes utilicen las mismas versiones de software**, evitando errores comunes de compatibilidad.


## Introducción a R y RStudio

**R** es un lenguaje de programación ampliamente utilizado para análisis estadístico y bioinformática. 
**RStudio** es un entorno de desarrollo integrado (IDE) que facilita el trabajo con R mediante una interfaz gráfica.

Durante el taller utilizaremos RStudio para:

- ejecutar scripts
- explorar datos
- generar visualizaciones
- documentar análisis reproducibles


## Requisitos mínimos

Antes de continuar asegúrate de tener instalado:

- **R ≥ 4.3**
- **RStudio Desktop** (versión reciente)

Puedes verificar la versión de R ejecutando en la consola:

```r
R.version.string
```

## Introducción a paquetes 

### usethis y here

Durante el taller aplicaremos buenas prácticas de organización de proyectos en R.

El paquete *usethis* facilita la configuración de proyectos reproducibles, incluyendo:

- integración con Git
- gestión de dependencias
- estructura de proyectos

El paquete *here* (parte de usethis) permite manejar rutas relativas al proyecto, evitando problemas asociados a rutas absolutas.

Ejemplo:
```bash
here::here("scripts", "test_installation.R")
```
Esto permite acceder a archivos del proyecto de forma portable y reproducible. Indicando únicamente la ruta relativa del directorio y archivo. 

### Paquetes de Bioconductor

**Bioconductor** es un ecosistema de paquetes de R especializado en análisis de datos genómicos y transcriptómicos.

En este taller utilizaremos paquetes de Bioconductor para tareas como:

- control de calidad de datos single-cell
- detección de dobles
- manipulación de objetos experimentales
- análisis de RNA-seq pseudobulk

Por ejemplo: scater, scran y scuttle, entre otros. 


### Paquetes de tidyverse

Muchos paquetes utilizados en el taller forman parte del ecosistema tidyverse, un conjunto de herramientas para manipulación y visualización de datos en R.

El entorno incluye:

- ggplot2 → visualización de datos
- dplyr → manipulación de datos
- tidyr → reorganización de datos
- entre otros

### Seurat

El análisis de datos single-cell RNA-seq en este taller se realizará utilizando **Seurat v5**.

Seurat es uno de los frameworks más utilizados para análisis single-cell e incluye herramientas para:

- normalización de datos
- reducción de dimensionalidad
- clustering
- visualización, etc.

### Siguiente paso

Ahora que comprender el conjunto de paquetes y herramientas minimos preparados para realizar análisis de célula única, puedes continuar con: 

[preparación del entorno con mamba](software_setup.md)

---

CSC. Marzo 11, 2026



