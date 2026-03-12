# Preparación inicial del entorno de trabajo en R

Este documento describe los **primeros pasos para preparar el entorno computacional** que utilizaremos a lo largo del taller.


## El entorno y preparación del usuario

El **entorno de análisis** es el espacio donde definimos herramientas, paquetes y versiones que utilizaremos para ejecutar y reproducir código relacionado con un proyecto, por ejemplo en lenguaje **R** o **Python**.

En este taller alentamos a todos los participantes a aplicar **buenas prácticas computacionales** con el objetivo de asegurar que todos cuenten con una **configuración mínima común y reproducible** antes de ejecutar los scripts del directorio `scripts/`.

Para lograrlo utilizamos una preparación del entorno en **tres capas**:

1. **GUÍA** – Introducción a los elementos que componen el entorno.  
2. **SISTEMA BASE** – Creación del entorno reproducible utilizando **Miniforge / mamba**.  
3. **TEST DE INSTALACIÓN** – Verificamos que el entorno funcione ejecutando  
   [`scripts/test_installation.R`](../scripts/test_installation.R)

Esquema ilustrativo de 3 capas:

```bash
guide_env.md
↓
software_setup.md + environment-minimal-seurat5.yml
↓
scripts/test_installation.R
```

>Lo único que debes instalar manualmente, debido a que no forma parte de los scripts automatizados del taller, es **RStudio**.

Al finalizar tendrás un **entorno Conda reproducible** que instalará **R**, **Seurat** y los paquetes necesarios para análisis de **single-cell RNA-seq**.


## 1. GUÍA – Introducción a los elementos que componen el entorno

### Entorno computacional del taller

El taller utiliza un entorno reproducible definido en el archivo 
[environment-minimal-seurat5.yml](../environment-minimal-seurat5.yml)

Este archivo instala automáticamente:

- **R 4.4**
- **Seurat v5**
- paquetes del ecosistema **tidyverse**
- paquetes de **Bioconductor para análisis single-cell**
- herramientas para **visualización, QC y análisis pseudobulk**

El uso de este entorno garantiza que todos los participantes utilicen **las mismas versiones de software**, evitando errores comunes de compatibilidad.


## R y RStudio

**R** es un lenguaje de programación ampliamente utilizado para análisis estadístico y bioinformática. Mientras **RStudio** es un entorno de desarrollo integrado (IDE) que facilita la interacción con R mediante una interfaz gráfica.

Durante el taller utilizaremos RStudio para:

- ejecutar scripts
- explorar datos
- generar visualizaciones
- documentar análisis reproducibles

Como se indicó anteriormente, **RStudio no forma parte de los scripts de instalación automatizados**, por lo que deberás instalarlo manualmente siguiendo las instrucciones oficiales en https://posit.co/download/rstudio-desktop/

Selecciona la versión correspondiente a tu sistema operativo y sigue las instrucciones:

- **macOS**
- **Windows**
- **Linux**

## Introducción a paquetería de software 

### usethis y here

*usethis* facilita la configuración de proyectos reproducibles, incluyendo:

- integración con Git
- gestión de dependencias
- estructura de proyectos

El paquete *here* (parte de la suite usethis) permite manejar rutas relativas al proyecto, evitando problemas asociados a rutas absolutas.

Ejemplo:
```bash
here::here("scripts", "test_installation.R")
```
Esto permite acceder a archivos del proyecto de forma portable y reproducible. Indicando únicamente la ruta relativa del directorio y archivo. 

### Paquetes de Bioconductor

**Bioconductor** es un ecosistema de paquetes de R especializado en análisis de datos genómicos y transcriptómicos. En este taller utilizaremos paquetes de Bioconductor para tareas como:

- control de calidad de datos single-cell
- detección de dobles
- manipulación de objetos experimentales
- análisis de RNA-seq pseudobulk

Algunos de estos son por ejemplo: scater, scran y scuttle, entre otros. 

### Paquetes de tidyverse

Muchos paquetes utilizados en el taller forman parte del ecosistema tidyverse, un conjunto de herramientas para manipulación y visualización de datos en R.

El entorno incluye:

- visualización de datos (ggplot2)
- manipulación de datos (dplyr)
- reorganización de datos (tidyr)

### Seurat

El análisis de datos single-cell RNA-seq en este taller se realizará utilizando **Seurat v5**. Seurat es uno de los frameworks más utilizados para análisis single-cell e incluye herramientas para:

- normalización de datos
- reducción de dimensionalidad
- clustering
- visualización, etc.

### Siguiente paso

Si llegaste a este punto, estas preparado para continuar con la instalación del (2) SISTEMA BASE utilizando **Conda**, **Mamba** y **Seurat v5** 

[Continúa con la preparación del entorno conda/mamba/Seurat](software_setup.md)

---

CSC. Marzo 11, 2026



