############################################################
# Test script: Verify scRNA-seq workshop installation
# El Arkhe - scRNA-seq Workshop
############################################################

cat("====================================\n")
cat("scRNA-seq Workshop Installation Test\n")
cat("====================================\n\n")

# 1. Print R session info
cat("Checking R version...\n")
print(R.version.string)
cat("\n")

# 2. Check required packages
packages <- c(
  "Seurat",
  "SeuratObject",
  "sctransform",
  "Matrix",
  "tidyverse",
  "patchwork",
  "future",
  "hdf5r"
)

cat("Checking required packages...\n")

for (pkg in packages) {
  if (requireNamespace(pkg, quietly = TRUE)) {
    cat("✔", pkg, "loaded successfully\n")
  } else {
    cat("✘", pkg, "NOT installed\n")
  }
}

cat("\n")

# 3. Load Seurat
cat("Loading Seurat...\n")
library(Seurat)
cat("Seurat version:", as.character(packageVersion("Seurat")), "\n\n")

# 4. Test reading 10x HDF5 file
file_path <- "data/10XGenomics_data/5k_Human_Donor3_PBMC_3p_gem-x_5k_Human_Donor3_PBMC_3p_gem-x_count_sample_filtered_feature_bc_matrix.h5"

cat("Checking test dataset...\n")

if (file.exists(file_path)) {
  
  cat("Dataset found. Loading counts matrix...\n")
  
  counts <- Read10X_h5(file_path)
  
  cat("Counts matrix loaded successfully.\n")
  
  dims <- dim(counts)
  
  cat("Matrix dimensions:\n")
  cat("Genes:", dims[1], "\n")
  cat("Cells:", dims[2], "\n\n")
  
} else {
  
  cat("Dataset not found.\n")
  cat("Expected path:\n")
  cat(file_path, "\n\n")
  
}

# 5. Optional: create Seurat object
cat("Creating Seurat object...\n")

if (exists("counts")) {
  
  pbmc <- CreateSeuratObject(counts)
  
  cat("Seurat object created successfully.\n")
  cat("Cells:", ncol(pbmc), "\n")
  cat("Genes:", nrow(pbmc), "\n\n")
  
} else {
  
  cat("Skipping Seurat object creation (counts matrix not available).\n\n")
  
}

# 6. Final confirmation
cat("====================================\n")
cat("Installation test completed\n")
cat("If no errors appeared above, your environment is ready\n")
cat("====================================\n")