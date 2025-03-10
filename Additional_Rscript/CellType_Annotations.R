#Step 2: Load and Annotate in R (Using Azimuth or SingleR)
#In R, you’ll load the AnnData file and use Azimuth or SingleR for annotation.

#Option A: Using sinlemine in R
library(SingleR)
library(celldex)
library(SingleCellExperiment)
library(scRNAseq)  # For reference datasets
library(Seurat)

# Replace '/opt/homebrew/opt/hdf5' with the actual path if different
Sys.setenv(HDF5_DIR = "/opt/homebrew/opt/hdf5")
Sys.setenv(HDF5_BIN = "/opt/homebrew/opt/hdf5/bin")
Sys.setenv(PKG_CONFIG_PATH = "/opt/homebrew/opt/hdf5/lib/pkgconfig")
install.packages("hdf5r", type = "source")

# Install Seurat and SeuratDisk
#install.packages("Seurat")
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_github("mojaveazure/seurat-disk")

# Convert .h5ad file to .h5Seurat format
Convert("ad_viz.h5ad", dest = "h5Seurat", overwrite = TRUE)
ad_viz_seurat <- LoadH5Seurat("ad_viz.h5Seurat")

# Convert Seurat object to SingleCellExperiment
sce <- as.SingleCellExperiment(ad_viz_seurat)

# Annotate with SingleR
# Load a mouse reference dataset
#ref <- HumanPrimaryCellAtlasData()
ref <- MouseRNAseqData()
singleR_annotations <- SingleR(test = sce, ref = ref, labels = ref$label.main)
write.csv(singleR_annotations$labels, "singleR_annotations.csv")

#Option A: Using Azimuth (in Seurat)
#Install and load Azimuth in R if you haven't already.

library(Seurat)
library(SeuratDisk)
#library(Azimuth)  # Azimuth may require installation from GitHub

# Use Azimuth for cell type annotation
ad_viz_azimuth <- Azimuth::RunAzimuth(ad_viz_seurat, reference = "ref_path")
