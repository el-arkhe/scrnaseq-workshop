# scRNA-seq Datasets

## Lieber Institute for Brain Development Datasets

> Esta documentación se mantiene intencionadamente en inglés para preservar los nombres originales de los conjuntos de datos proporcionados por 10x Genomics. La traducción de los nombres de los conjuntos de datos puede generar inconsistencias o confusión al buscar, descargar o reproducir análisis.

This dataset focuses on the **human habenula**, a brain region involved in reward processing and neuropsychiatric disorders.

The dataset includes **7 control donors**, totaling approximately **16,000 nuclei**.

- Technology: Universal 3' (snRNA-seq)  
- Processing: Cell Ranger (Chromium platform)  
- Data access: Globus Endpoints  


### Data Exploration

This dataset represents a **real-world neuroscience project**, providing a more complex biological context compared to standard PBMC datasets.

Key aspects to consider:
- Nuclei-based sequencing (snRNA-seq)  
- Brain-specific cell types  
- Subtle transcriptional differences across cell populations  

#### Reference Material

Associated publication:  
*Transcriptomic Analysis of the Human Habenula in Schizophrenia*  
*American Journal of Psychiatry*  

https://doi.org/10.1176/appi.ajp.20240776  

GitHub repository:  
https://github.com/LieberInstitute/Habenula_Pilot  

This repository contains:
- Project structure  
- Processing notes  
- Supporting analysis scripts  


### Data Selection and Download (FASTQ and HDF5 via Globus)

Data for this project is distributed through **Globus Endpoints**, a platform commonly used for large-scale data transfer.

#### Step 1: Access Globus
- Create or log in to your account: https://www.globus.org  

#### Step 2: Locate the dataset
- Search for the endpoint:  
  `jhpce#habenulaPilotsnRNAseq`

#### Step 3: Select and download files

- Choose data for **donors**. for example:
   - `Br1204`
   - `Br5558`
- Alternatively, download the **processed object**:
   - `sc_Habenula_Pilot.Rdata`  

File types include:
- **FASTQ files** → raw sequencing data  
- **HDF5 / RData** → processed data for downstream analysis  


### Learning Objectives

By working with this dataset, you will:

- Analyze **snRNA-seq data from brain tissue**  
- Compare nuclei-based vs cell-based datasets  
- Identify **brain-specific cell populations**  
- Practice annotation in a **less canonical system**  
- Understand challenges in **real research datasets**  

---

### Key Differences vs PBMC Datasets

| PBMC Datasets              | Habenula Dataset                |
|---------------------------|--------------------------------|
| Well-defined markers      | Less obvious markers           |
| Immune cell types         | Brain-specific cell types      |
| Easier annotation         | More interpretative analysis   |
| Cells (scRNA-seq)         | Nuclei (snRNA-seq)             |

---

### Notes

- This dataset is more **biologically complex** than standard training datasets.  
- Expect **greater variability** and **less clear cluster separation**.  
- Emphasis is placed on **interpretation and critical thinking**, rather than only pipeline execution.  

Dataset collection consulted in April 2026.  
The 10x Genomics repository is continuously updated, so dataset availability may change over time.

---

### Additional Resource

For reference, you may also explore 10x Genomics datasets via Globus:

https://www.globus.org  


---