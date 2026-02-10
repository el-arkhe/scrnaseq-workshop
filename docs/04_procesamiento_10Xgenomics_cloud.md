# Práctica 01  

## Selección y procesamiento de datos utilizando `10x Genomics on the Cloud`

### Metas de la práctica

Al finalizar esta práctica, aprenderás a:

1. Crear y vincular un entorno básico para seleccionar, descargar y procesar datos de *scRNA-seq*.
2. Seleccionar datasets aplicando distintos filtros de búsqueda, incluyendo plataforma de secuenciación, cobertura del producto y versión de la química utilizada.
3. Reconocer los diferentes archivos de entrada y salida generados por *Cell Ranger*.
4. Identificar las métricas clave reportadas por *Cell Ranger* para verificar si los datos procesados coinciden con las expectativas experimentales.
5. Realizar la descarga y verificación de integridad de datos crudos y procesados.
6. Identificar y acceder a datos disponibles en repositorios alternativos, como *Globus Endpoints*.
7. Procesar datos utilizando *Cell Ranger on the Cloud* como alternativa de cómputo.


### Datos de la práctica

Dado que existen múltiples sets de datos de célula única disponibles de forma pública para distintas especies, es importante señalar que utilizaremos datos de **origen humano** generados con la plataforma **10x Genomics**.

- El ejercicio se llevará a cabo en **2 equipos**
- Cada equipo trabajará con **fuentes de datos distintas**, pero seguirá el mismo flujo de procesamiento y análisis de datos.


### Requisitos generales

Deberás contar con cuentas de acceso para lo siguiente:

1. **Datos disponibles a través de 10x Genomics** (todos los equipos) 
   https://www.10xgenomics.com/datasets  
   *(Equipo 1)*

2. **Plataforma de procesamiento en la nube de 10x Genomics**  (todos los equipos)
   https://cloud.10xgenomics.com/signin  

3. **Datos experimentales de 10x Genomics vía Globus Endpoints**  (equipo con datos externos a 10X Genomics Datasets)
   https://www.globus.org  
   *(Equipo 2)*

---


### Entendiendo las categorias de datos en *10x Genomics Datasets*

A la fecha, *10x Genomics Datasets* lista diferentes categorias de datos de celúla única, en lo que se refiere a datos RNA Chromium se  dividen en cinco categorias: *3' Gene Expression (v3.1, Next GEM)*, *5' Gene Expression*, *Fixed RNA Profiling*, *Nuclei RNA (Single Cell Multiome)* y *Targeted Gene Expression*.  

En esta práctica nos enfocaremos en **Chromium 3' Gene Expression**, ya que esté tipo de datos corresponden a experimentos de **secuenciación de transcriptoma completo**, el cuál es además el formato más común en estudios de scRNA-seq.

   Nota: independientemente de sí el dato es 3', 5' o Fixed RNA, el flujo de trabajo inicial en *Seurat* suele seguir los mismos pasos esenciales. 

   En el caso de Fixed RNA Profiling (Flex), notarás que *Seurat* identifica sondas en lugar de lecturas directas de transcritos, pero el objeto final se comporta igual. Si usas 5' RNA, también podrías cargar los datos de V(D)J (TCR/BCR) como un "Assay" adicional.


### Datos con secuencias sin procesar versus datos procesados

En experimentos de scRNA-seq es importante distinguir entre **datos sin procesar (raw data)** y **datos procesados**, ya que cumplen funciones distintas dentro del flujo de análisis.

Los datos sin procesar corresponden principalmente a archivos FASTQ y contienen las lecturas de secuenciación originales. Estos datos son el punto de partida para el análisis primario y permiten reprocesar el experimento utilizando diferentes parámetros, referencias o versiones de software.

Los datos procesados son el resultado del análisis primario (por ejemplo, con Cell Ranger) e incluyen matrices de conteo, archivos BAM y reportes de calidad. Estos datasets están listos para análisis downstream, como control de calidad, clustering e identificación de tipos celulares.

---


## Equipo 1: Datos del repositorio de `10x Genomics Datasets`

Los datos de este proyecto estan enfocados en `Peripheral blood mononuclear cells (PBMCs) from healthy humans`.

El set de datos esta compuesto por 4 donadores control con ~20 k celúlas en total.

Es un set de datos Universal 3' procesado utilizando Cell Ranger 9.0.0

Los datos serán descargados directamente de `10x Genomics Datasets`
- Deberás elegir los datos de 2 donadores (~10 k celúlas)


### 1. Exploración de datos

- Para elegir apropiadamente un set de datos, primero examinar las métricas reportadas en el **Summary Report** generado automáticamente por `Cell Ranger`. Verifica sí coinciden con tus expectativas y los recursos disponibles en tu computador.

- Sí los recursos de computo que dispones son limitados, es recomendable elegir **un set de datos < 5000 células**. Esto te permitirá realizar la práctica y facilitará el procesamiento en `10X Cell Ranger on the Cloud`.


### 2. Selección y descarga de datos (FASTQ y HDF5)

- Crea una cuenta en **10x Genomics Cloud**  
https://cloud.10xgenomics.com/signin  

- Accede al portal de datasets de 10x Genomics  
https://www.10xgenomics.com/datasets  

- Aplica los siguientes filtros de búsqueda:

   - **Platform:** Chromium Single Cell  
   - **Product:** Universal 3′  
   - **Chemistry version:** V2+  
   - **Additional application:**  
   Esta sección indica **capas adicionales de información** (p. ej. proteínas de superficie, multiplexing, CRISPR, throughput).  
   No define la química principal, solo actúa como **filtro funcional complementario**.
   - **Software:** Cell Ranger  
   - **Pipeline:** v9.0.0  
   - El resto de las opciones puede dejarse sin selección.

Los archivos a descargar usualmente estarán en formato comprimido *.fastq.gz y h5*

Sigue las intrucciones disponibles del website para descargar los datos, y después de descargarlos verifica su integridad mediante checksums MD5.  

La verificación permite confirmar que los archivos se descargaron **completos y sin corrupción**, especialmente cuando se trata de archivos grandes (`.h5`, `.fastq.gz`).

---


## Equipo 2: Datos de `Lieber Institute for Brain Development`

Los datos de este proyecto estan enfocados en la `habenula humana`.

El set de datos esta compuesto por 7 donadores control con ~16 k celúlas en total.

Es un set de datos Universal 3' procesado utilizando Cell Ranger X.0.0

Los datos serán descargados de *Globus Endpoints*.
- Deberás elegir los datos de 2-3 donadores (~10 k celúlas)


### 1. Exploración de datos

- Los aspectos técnicos de este proyecto pueden consultarse en:

   Artículo asociado:  
   *Transcriptomic Analysis of the Human Habenula in Schizophrenia*  
   *American Journal of Psychiatry*

   [Enlace a la cita original](https://doi.org/10.1176/appi.ajp.20240776)

- Repositorio GitHub: https://github.com/LieberInstitute/Habenula_Pilot


### 2. Selección y descarga de datos (FASTQ y HDF5) vía Globus Endpoints

- Accede a tu cuenta **Globus**: https://www.globus.org  

- Localiza el proyecto: `jhpce#habenulaPilotsnRNAseq`

- Busca y descarga en tu computador los **FASTQ files** y **RData / hdf5** correspondiente a los donadores:

   - `Br1204`
   - `Br5558`
   - `sc_Habenula_Pilot.Rdata`

- De igual forma, después de descargarlos verifica su integridad mediante checksums MD5.  

---


## Procesamiento en `10x Genomics on The Cloud`

1. Accede a tu cuenta en **10x Genomics on The Cloud**  
   https://cloud.10xgenomics.com/signin  

2. Crea un **proyecto nuevo**.

3. Sigue las instrucciones de la plataforma de acuerdo a tu sistema operativo:
   - Subir los FASTQ files
   - Ejecutar el pipeline de **Cell Ranger**
   - Una vez terminado el procesamiento, explorar los reportes de calidad 

---


### Resultados esperados

Al finalizar la práctica, cada equipo deberá contar con:

- Reportes de calidad (**Web Summary** de Cell Ranger)
- Matrices de conteo (filtered y raw)
- Estructura estándar de salida de **Cell Ranger**
- Comprensión del flujo completo:
  - Acceso a datos
  - Subida a la nube
  - Procesamiento sin infraestructura local


### Notas finales

- El objetivo principal de esta práctica es **entender el flujo de procesamiento**, no optimizar parámetros.
- 10x Genomics Cloud es una **alternativa práctica** cuando no se cuenta con:
  - HPC
  - Memoria suficiente
  - Entorno Linux configurado

---


CSC. Enero 31, 2025