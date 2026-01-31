# Práctica 01  

## Procesamiento de datos 10x Genomics en la nube (10x Genomics Cloud)

## Objetivo de la práctica

En esta práctica se realizará el **procesamiento primario de datos de single-cell RNA-seq generados con tecnología 10x Genomics**, utilizando la plataforma **10x Genomics Cloud** como alternativa al procesamiento local.

Debido a las **restricciones de recursos de hardware y software**, el ejercicio se llevará a cabo en **N equipos (idealmente 2 o 3)**, donde cada equipo trabajará con **fuentes de datos distintas**, pero seguirá un flujo de procesamiento equivalente.


## Requisitos generales

Las personas que participen en la práctica deberán contar con acceso (o crear acceso) a las siguientes plataformas:

1. **Datos oficiales de 10x Genomics**  
   https://www.10xgenomics.com/datasets  
   *(Equipo 1)*

2. **Datos experimentales de 10x Genomics vía Globus**  
   https://www.globus.org  
   *(Equipo 2)*

3. **Plataforma de procesamiento en la nube de 10x Genomics**  
   https://cloud.10xgenomics.com/signin  


## Tipos de datos disponibles en 10x Genomics

A la fecha, el portal de **10x Genomics Datasets** ofrece **cinco tipos de datos Chromium**.  
En esta práctica nos enfocaremos exclusivamente en:

- **Chromium Single Cell Gene Expression – Universal 3′**

Este tipo de datos corresponde a experimentos de **secuenciación de transcriptoma completo a nivel de célula individual**, y es el formato más común en estudios de scRNA-seq.

---

# Equipo 1  
## Procesamiento de datos oficiales de 10x Genomics

### Acceso a datos (FASTQ)

1. Crear una cuenta en **10x Genomics Cloud**  
   https://cloud.10xgenomics.com/signin  

2. Acceder al portal de datasets de 10x Genomics  
   https://www.10xgenomics.com/datasets  

3. Aplicar los siguientes filtros de búsqueda:

   - **Platform:** Chromium Single Cell  
   - **Product:** Universal 3′  
   - **Chemistry version:** V2+  
   - **Additional application:**  
     > Esta sección indica **capas adicionales de información** (p. ej. proteínas de superficie, multiplexing, CRISPR, throughput).  
     > No define la química principal, solo actúa como **filtro funcional complementario**.
   - **Software:** Cell Ranger  
   - **Pipeline:** v9.0.0  
   - El resto de las opciones puede dejarse sin selección.


### Exploración del dataset

- Explorar los **Summary Reports** de los datasets filtrados.
- Seleccionar **un dataset pequeño** (recomendado: **< 5,000 células**) para facilitar la implementación.
- Descargar los **raw data (FASTQ files)** al computador local.


### Procesamiento en 10x Genomics Cloud

1. Ingresar a  
   https://cloud.10xgenomics.com/signin  

2. Agregar las credenciales solicitadas.

3. Crear un **nuevo proyecto**.

4. Seguir las instrucciones específicas de la plataforma según el **sistema operativo** (Linux, macOS o Windows) para:
   - Subir los FASTQ files
   - Ejecutar el pipeline de **Cell Ranger** en la nube
   - Obtener las matrices de conteo y reportes de calidad

---

# Equipo 2  
## Procesamiento de datos de cerebro humano (Globus + 10x Cloud)

### Contexto de los datos

Existen múltiples datasets de **snRNA-seq humano** disponibles públicamente. Para esta práctica se trabajará con datos accesibles mediante **Globus Endpoints**, un sistema ampliamente utilizado para compartir datos desde raw hasta resultados procesados.


### Proyectos de referencia

#### 1. 10xPilot_snRNAseq-human

Proyecto de **single-nucleus RNA-seq (snRNA-seq)** con datos de **ocho donadores postmortem**, generado por el **Lieber Institute for Brain Development**.

- Regiones cerebrales:
  - NAc
  - AMY
  - sACC
  - DLPFC
  - HPC

Repositorio GitHub:  
https://github.com/LieberInstitute/10xPilot_snRNAseq-human


#### 2. Habenula_Pilot

Proyecto enfocado en la **habenula humana**, que incluye:

- Bulk RNA-seq de **69 donadores**
- snRNA-seq de **7 donadores control**
- Casos y controles para **esquizofrenia**

Repositorio GitHub:  
https://github.com/LieberInstitute/Habenula_Pilot

Artículo asociado:  
*Transcriptomic Analysis of the Human Habenula in Schizophrenia*  
*American Journal of Psychiatry*


### Acceso a datos vía Globus

1. Crear una cuenta en **Globus**  
   https://www.globus.org  

2. Localizar el **Globus Endpoint** correspondiente al proyecto seleccionado.

3. Buscar y seleccionar los **raw data (FASTQ files)**.

4. Descargar los datos al computador local.


### Procesamiento en 10x Genomics Cloud

1. Crear una cuenta en **10x Genomics Cloud**  
   https://cloud.10xgenomics.com/signin  

2. Agregar las credenciales solicitadas.

3. Crear un **proyecto nuevo**.

4. Seguir las instrucciones de la plataforma según el sistema operativo para:
   - Subir los FASTQ files descargados desde Globus
   - Ejecutar el pipeline de **Cell Ranger**
   - Generar matrices de expresión y reportes de QC

---

## Resultados esperados

Al finalizar la práctica, cada equipo deberá contar con:

- Reportes de calidad (**Web Summary** de Cell Ranger)
- Matrices de conteo (filtered y raw)
- Estructura estándar de salida de **Cell Ranger**
- Comprensión del flujo completo:
  - Acceso a datos
  - Subida a la nube
  - Procesamiento sin infraestructura local

---

## Notas finales

- El objetivo principal de esta práctica es **entender el flujo de procesamiento**, no optimizar parámetros.
- 10x Genomics Cloud es una **alternativa práctica** cuando no se cuenta con:
  - HPC
  - Memoria suficiente
  - Entorno Linux configurado
- Este flujo es especialmente útil para **docencia, talleres y prototipado rápido**.

---

CSC. Enero 31, 2025