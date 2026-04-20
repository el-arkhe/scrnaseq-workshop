# scRNA-seq Datasets

## 10x Genomics Datasets

> Esta documentación se mantiene intencionadamente en inglés para preservar los nombres originales de los conjuntos de datos proporcionados por 10x Genomics. La traducción de los nombres de los conjuntos de datos puede generar inconsistencias o confusión al buscar, descargar o reproducir análisis.

Datasets selected for this course are from the **10x Genomics Datasets repository**, a widely used resource of NGS data containing among other data, public single-cell RNA sequencing (scRNA-seq). 

The selected datasets presented here correspond to those generated using the **Chromium Single Cell 3′ platform** and cover a variety of species, tissues, and experimental designs. They are commonly used for trainning, benchmarking computational methods, and practicing real-world data workflows.

## Overview

- **Total selected datasets:** ~223  
- **Technology:** Chromium Single Cell 3′ (v1 → v4)  
- **Output:** Gene expression (scRNA-seq)  
- **Pipeline compatibility:** Cell Ranger  

## Species

- Human (most common)  
- Mouse  
- Rat  
- Rhesus macaque  
- Mixed species (human + mouse)  

Mixed-species datasets are useful for detecting doublets and validating data quality.  

## Common Biological Systems

### Immune System (PBMCs)
- Most frequently used datasets  
- Includes T cells, B cells, NK cells, monocytes  

These datasets are ideal for beginners because cell types are well characterized and marker genes are well known.  

### Brain
- Mouse embryonic brain (E18)  
- Adult brain nuclei  
- Human glioblastoma  

Useful for studying complex cell populations and  practicing annotation in less obvious systems.  

### Cancer and Disease
- Lung, breast, brain cancers  
- Lymphoma and other conditions  

Useful for differential expression analysis and biological interpretation.  

### Organs and Tissues
- Liver, lung, heart, kidney, intestine  

Useful for tissue-specific gene expression.  

### Cell Lines and Controls
- HEK293T, NIH3T3, Jurkat, Raji  
- Controlled mixtures (e.g., 1:1 species mix)  

Useful for quality control and method validation.  

## Experimental Designs

- **Standard scRNA-seq** → whole transcriptome  
- **Multiplexed datasets** → batch correction  
- **Multimodal datasets** → RNA + protein (TotalSeq)  
- **Perturbation datasets** → CRISPR or drug treatment  
- **Targeted panels** → selected genes only  

## Technical Considerations

### Sample Preservation
- Fresh  
- Frozen  
- Cryopreserved  
- Fixed  

Important for understanding variability in data quality.

### Cells vs Nuclei
- Cells → standard scRNA-seq  
- Nuclei → snRNA-seq  

Nuclei datasets are useful when working with frozen tissues and intronic reads.  

### Dataset Size

- Small: 100–1k cells  
- Medium: 5k–20k cells  
- Large: 30k–60k cells  
- Very large: >1M cells  

Larger datasets require more computational resources.

## Recommended datasets for this course

- 5k PBMCs (Donor 1) → main analysis workflow  
- 5k PBMCs (Donor 2–4) → reproducibility  
- 20k multiplex PBMCs → batch correction  

## What you will learn using these datasets

- Perform quality control (QC)  
- Normalize scRNA-seq data  
- Identify clusters of cells  
- Annotate cell types using marker genes  
- Understand variability across samples  
- Apply basic batch correction  

## Notes

Dataset collection consulted in April 2026.  
The 10x Genomics repository is continuously updated, so dataset availability may change over time.

---
