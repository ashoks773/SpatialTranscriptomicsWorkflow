# Spatial Transcriptomics Data Analysis Tutorial

**Spatial Transcriptomics Data Analysis Tutorial** provides a step-by-step guide to analyzing publicly available spatial transcriptomics datasets. This tutorial uses **Hepatocellular carcinoma (HCC) resection specimens** (Zhang et. al. 2023) and demonstrates how to load, preprocess, normalize, and visualize the data. The detailed tutorial from start to end is provided in notebook named `ST_Complete_Tutorial_AKS.ipynb`, and all data and outputs are stored in the `data` folder. 
Addtional notebooks:
- `Sample_HCC1R.ipynb` for Sample (HCC1R) specific quality filtering
- `Exercise_Normalization_AKS.ipynb` for detailed Normalization
- `Exercise_Clustering_AKS.ipynb` for detailed Clustering analysis
- `Exercise_CellTypeAnnotation_AKS.ipynb` for detailed Cell Type Annotations
  
---
## Overview
This tutorial covers the following steps in spatial transcriptomics analysis:
1. **Dataset Selection and Download**
2. **Data Loading and Creation of `SingleCell` Object**
3. **Normalization, PCA, UMAP, Clustering, and Visualization**
4. **Marker Gene Identification**
5. **Cell Type Annotation using `CellTypist`**  
---

## Dataset
The analysis is based on the dataset from **Hepatocellular carcinoma (HCC) resection specimens**. The dataset was downloaded from the **GEO database** under the accession number **GSE238264_RAW**.
- **Dataset Link**: [GSE238264_RAW](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE238264)
- **Raw Data**: Stored in the `GSE238264_RAW` folder.
- **Outputs**: Stored in the `data` folder.
---

## Steps in the Tutorial
### 1. Select and Download Dataset
- Download the raw spatial transcriptomics data from **GEO** using the accession number **GSE238264**.
- Extract and place the data in the `GSE238264_RAW` folder.

### 2. Load Data and Create `SingleCell` Object
- Load the downloaded raw data into the analysis environment using **`scanpy`**.
- Create a `SingleCell` object for subsequent analysis.

### 3. Normalization, PCA, UMAP, Clustering, and Visualization
- Normalize the raw data using the log transformation (`log1p`).
- Perform **PCA** (Principal Component Analysis) for dimensionality reduction.
- Use **UMAP** (Uniform Manifold Approximation and Projection) for visualizing the data in 2D space.
- Perform clustering to identify distinct cell populations and visualize them on the UMAP plot.

### 4. Marker Gene Identification
- Identify marker genes that are differentially expressed across clusters or specific sample categories.
- Visualize the expression of these marker genes to understand the differences between clusters.

### 5. Cell Type Annotation
- Use **CellTypist** for cell type annotation.
- Optionally validate the annotations manually or using clustering methods.
- Explore other annotation tools like **SingleR** (R) or **Azimuth** for cross-validation.
---

## Key Features
- **Normalization & Preprocessing**: Log-transformation for normalization.
- **Dimensionality Reduction**: PCA and UMAP for visualization.
- **Clustering**: Identify clusters of cells based on gene expression.
- **Marker Gene Identification**: Differential gene expression to identify cluster-specific markers.
- **Cell Type Annotation**: Use tools like `CellTypist` for automated cell type annotation.
---

## Getting Started
### Prerequisites
To run the analysis tutorial, you will need the following Python and R packages:
#### Data Processing
- **numpy**: For numerical operations.
- **pandas**: For data manipulation.
- **matplotlib**: For plotting and visualization.
- **seaborn**: For plotting and visualization.
- **sklearn**: For machine learning algorithms and clustering.
- **umap-learn**: For dimensionality reduction.
- **umap**: Alternative UMAP implementation for high-dimensional visualization.
- **scanpy**: For single-cell data analysis and visualization.
- **os**: To interact with the operating system

#### Cell Type Annotations
- **Seurat** (R): For comprehensive single-cell analysis, including annotation.
- **celldex** (R): Provides reference data for cell type classification.
- **SingleCellExperiment** (R): Data structure for single-cell analysis.
- **celltypist**: Automated classification of cell types.
- **azimuth** (R): Seurat-based tool for cell type annotation.
- **scType**: Cell type annotation using marker genes.
- **SingleR** (R): Correlation-based cell type annotation.

#### R Integration in Python
- **rpy2**: Interface to run R code within Python, essential for using R-based annotation methods.
---

### Installation
To install the required packages, use the `requirements.txt` file:
```bash
pip install -r requirements.txt
```

## Clone this repository to your local machine:
```bash
git clone https://github.com/yourusername/SpatialTranscriptomicsAnalysis.git
cd SpatialTranscriptomicsAnalysis
```

### Contact
🤚 Important
For any questions, please contact: 👉 Ashok K. Sharma; ashoks773@gmail.com
