# scRNA-seq Datasets
## 🚧 Repositorio en desarrollo  

## Human

## Mice and Rat

## Plants 

**Topic:**  
Single-cell transcriptomic atlas of *Arabidopsis* seedlings generated through the integration of **63 previously published scRNA-seq datasets**.

**Citation:**  
Cao S, Zhao X, Li Z, Yu R, Li Y, Zhou X, Yan W, Chen D, He C. Comprehensive integration of single-cell transcriptomic data illuminates the regulatory network architecture of plant cell fate specification. *Plant Divers.* 2024 Apr 3;46(3):372–385. doi: 10.1016/j.pld.2024.03.008. PMID: 38798726; PMCID: PMC11119547.  
https://pmc.ncbi.nlm.nih.gov/articles/PMC11119547/

#### scRNA-seq information

Number of datasets integrated: **63**  
Technology: **10x Genomics 3′, Drop-seq, Smart-Seq2**  
Pipeline: **Cell Ranger v3.1.0 (10x Genomics)** and **Drop-seq tools v1.13**

Reference genome: **Arabidopsis TAIR10** with **Araport11 GTF annotation**  
Number of samples: **45 biological samples**

Data collection:  
[Table S1](https://pmc.ncbi.nlm.nih.gov/articles/instance/11119547/bin/mmc1.xlsx)

Target cells:  
Seedling tissues including **root, shoot, cotyledons, leaves, vascular tissues, and stomatal lineage cells**

Reached cells:  
Approximately **377,000 cells** integrated across all datasets

#### Strategy and Workflow

Integration and batch correction of multiple public scRNA-seq datasets to construct a **comprehensive Arabidopsis seedling cell atlas** and reconstruct cell differentiation trajectories.

Main workflow: **Seurat v4.0.0**

Tools:  
Pseudotime trajectory inference using **Monocle2 (v2.8.0)**

Additional analyses included:

- Dataset integration across studies  
- Cell clustering and annotation  
- Gene regulatory network inference  
- Developmental trajectory reconstruction

#### Data availability

Data repository: **NCBI Gene Expression Omnibus (GEO)**  
Accession numbers: **Multiple GEO datasets integrated**

Example dataset:  
https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE123818

Supplementary scRNA-seq dataset collection:  
https://pmc.ncbi.nlm.nih.gov/articles/instance/11119547/bin/mmc1.xlsx

#### Algunos estudios relevantes incluidos en la integración

#### Arabidopsis Root Atlas
- **Shahan et al. 2022**
- ~108,000 cells
- Platform: **10x Genomics**
- Published in *Developmental Cell*

#### Arabidopsis Root Cell Types
- **Denyer et al. 2019**
- ~5,600 cells
- Platform: **10x Genomics**
- Published in *Developmental Cell*

#### High-Throughput Single-Cell Profiling
- **Shulse et al. 2019**
- ~8,900 cells
- Platform: **Drop-seq**
- Published in *Cell Reports*

#### Arabidopsis Stomatal Lineage
- **Lopez-Anido et al. 2021**
- ~16,000 cells
- Platform: **10x Genomics**
- Published in *Developmental Cell*

---