
# Análisis de resultados sin y con subsampling  
Cell Ranger Multi v9.0.1



## Datos generales

Dataset: **10X Genomics PBMC 5k**  
Referencia: GRCh38-2024-A  

Run IDs:
- 5k_Human_Donor3_PBMC_3p_gem-x  
- 5k_Human_Donor4_PBMC_3p_gem-x  



# Donador 3 (sin subsampling)

## Configuración

```bash
[gene-expression]
reference,/path/to/references/GRCh38-2024-A
create-bam,false

[libraries]
fastq_id,fastqs,lanes,feature_types
5k_Human_Donor3_PBMC_3p_gem-x_GEX,/path/to/fastqs/5k_Human_Donor3_PBMC_3p_gem-x_GEX_fastqs,1|2|3|4,Gene Expression
```

### Reporte Cell Ranger Donador 3
```{r, echo=FALSE, results='asis'}
cat(readLines("support/5k_Human_Donor3_PBMC_3p_gem-x_5k_Human_Donor3_PBMC_3p_gem-x_metrics_summary.csv"),
    sep = "\n")
```

Secondary Analysis: 
Clusters (Graph-based): 11 

[Reporte HTML de Cell Ranger - 10X Genomics Datasets](support/5k_Human_Donor3_PBMC_3p_gem-x_5k_Human_Donor3_PBMC_3p_gem-x_web_summary.html)


## Config Donador 4
```bash
[gene-expression]
reference,/path/to/references/GRCh38-2024-A
create-bam,false

[libraries]
fastq_id,fastqs,lanes,feature_types
5k_Human_Donor4_PBMC_3p_gem-x_GEX,/path/to/fastqs/5k_Human_Donor4_PBMC_3p_gem-x_GEX_fastqs,1|2|3|4,Gene Expression
```

### Reporte Cell Ranger Donador 4
```{r, echo=FALSE, results='asis'}
cat(readLines("support/5k_Human_Donor4_PBMC_3p_gem-x_5k_Human_Donor4_PBMC_3p_gem-x_metrics_summary.csv"),
    sep = "\n")
```

Secondary Analysis: 
Clusters (Graph-based): 14 

[Reporte HTML de Cell Ranger - 10X Genomics Datasets](support/5k_Human_Donor4_PBMC_3p_gem-x_5k_Human_Donor4_PBMC_3p_gem-x_web_summary.html)

---

## Subsampling 

### Config Donador 3 al 25%
```{r, echo=FALSE, results='asis'}
cat(readLines("support/5k_Human_Donor_PBMC_on_the_cloud\5k_Human_Donor3_config.csv"),
    sep = "\n")
```

### Reporte de Cell Ranger
```{r, echo=FALSE, results='asis'}
cat(readLines("support/5k_Human_Donor_PBMC_on_the_cloud\5k_Human_Donor3_metrics_summary.csv"),
    sep = "\n")
```

Secondary Analysis:
Clusters (Graph-based): 8 
Run Time: 34 Minutos

[Reporte HTML de Cell Ranger - 10X Genomics on the Cloud](support/5k_Human_Donor_PBMC_on_the_cloud/5k_Human_Donor3_web_summary.html)


---

### Config Donador 3 y 4 al 25%
```{r, echo=FALSE, results='asis'}
cat(readLines("support/5k_Human_Donor_PBMC_on_the_cloud\5k_Human_Donor3_Donor4_config.csv"),
    sep = "\n")
```

### Reporte de Cell Ranger
```{r, echo=FALSE, results='asis'}
cat(readLines("support/5k_Human_Donor_PBMC_on_the_cloud\5k_Human_Donor3_Donor4_metrics_summary.csv"),
    sep = "\n")
```

Secondary Analysis:
Clusters (Graph-based):
Run Time: 34 Minutos

[Reporte HTML de Cell Ranger - 10X Genomics on the Cloud](support/5k_Human_Donor_PBMC_on_the_cloud/5k_Human_Donor3_web_summary.html)


Notas. 
- En esta corrida estamos especificasndo: `create-bam,false`


### Analisis de resultados

Cells: 10,255
Median genes per cell: 1,809
Median UMI counts per cell: 4,337
Total genes detected: 28,129


### Responde las siguientes preguntas


