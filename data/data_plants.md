# scRNA-seq Datasets

## Arabidopsis Integrated Datasets

> Esta documentación se mantiene intencionadamente en inglés para preservar los nombres originales de los conjuntos de datos y recursos públicos. La traducción puede generar inconsistencias al buscar, descargar o reproducir análisis.

The dataset described in  corresponds to a **large-scale integration of 63 publicly available scRNA-seq datasets** focused on *Arabidopsis thaliana* seedlings.

This resource represents one of the most comprehensive plant single-cell atlases available and is particularly valuable for **plant biology, developmental studies, and regulatory network inference**.

## Overview

* **Total datasets integrated:** 63
* **Biological samples:** 45
* **Total cells:** ~377,000
* **Technology:** 10x Genomics 3′, Drop-seq, Smart-seq2
* **Pipeline compatibility:** Cell Ranger, Drop-seq tools, Seurat

## *Arabidopsis thaliana* (model plant organism) Species

Widely used as a reference system in plant biology due to its:

* Small genome
* Extensive annotation
* Availability of genetic tools

## Common Biological Systems

### Seedling Development

* Root
* Shoot
* Cotyledons
* Leaves

These datasets are ideal for studying **early plant development and tissue differentiation**.

### Vascular and Structural Tissues

* Vascular tissues
* Supporting structures

Useful for understanding **transport systems and tissue specialization**.

### Stomatal Lineage

* Guard cells
* Precursor cells

Important for studying **gas exchange regulation and environmental response**.

## Experimental Designs

* **Integrated multi-study datasets** → batch correction challenges
* **Multi-technology datasets** → cross-platform harmonization
* **Developmental trajectories** → lineage reconstruction
* **Gene regulatory network inference**

These datasets are particularly useful for **advanced analysis workflows** rather than beginner-level exercises.

## Technical Considerations

### Integration Complexity

* Multiple technologies combined
* Cross-study variability
* Requires robust batch correction

Main framework used:

* **Seurat v4.0.0**

### Reference Genome

* **Genome:** TAIR10
* **Annotation:** Araport11

Critical for:

* Gene annotation consistency
* Cross-dataset integration

### Pipeline

* **Cell Ranger v3.1.0** (10x Genomics)
* **Drop-seq tools v1.13**

### Downstream Analysis

* Clustering and annotation
* Pseudotime analysis using **Monocle2 (v2.8.0)**
* Gene regulatory network reconstruction

## Dataset Size

* Very large dataset: **~377k cells**

Implications:

* Requires high memory
* Suitable for:

  * Cloud computing
  * HPC environments

## Data Availability

* **Repository:** NCBI Gene Expression Omnibus (GEO)
* **Accession:** Multiple datasets

Example dataset:
[https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE123818](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE123818)

Supplementary dataset collection:
[https://pmc.ncbi.nlm.nih.gov/articles/instance/11119547/bin/mmc1.xlsx](https://pmc.ncbi.nlm.nih.gov/articles/instance/11119547/bin/mmc1.xlsx)

## Representative Studies Included

### Arabidopsis Root Atlas

* Shahan et al. 2022
* ~108,000 cells
* Platform: 10x Genomics

### Arabidopsis Root Cell Types

* Denyer et al. 2019
* ~5,600 cells
* Platform: 10x Genomics

### High-Throughput Single-Cell Profiling

* Shulse et al. 2019
* ~8,900 cells
* Platform: Drop-seq

### Arabidopsis Stomatal Lineage

* Lopez-Anido et al. 2021
* ~16,000 cells
* Platform: 10x Genomics

## Recommended Use for This Course

This dataset is recommended for:

* Advanced integration workflows
* Batch correction strategies
* Cross-technology harmonization
* Trajectory inference
* Regulatory network analysis

⚠️ Not ideal as a first dataset due to:

* Integration complexity
* Large size
* Multi-platform variability

## What You Will Learn Using These Datasets

* Integrate multiple scRNA-seq datasets
* Handle batch effects across technologies
* Reconstruct developmental trajectories
* Infer gene regulatory networks
* Work with large-scale plant datasets

## Notes

Dataset collection and integration described in 2024 (Plant Diversity).
Availability depends on individual GEO datasets included in the study.

Article and dataset consulted in April 2026.  

---
