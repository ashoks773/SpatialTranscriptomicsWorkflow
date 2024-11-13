# Spatial Transcriptomics Data Analysis Tutorial

**Spatial Transcriptomics Data Analysis Tutorial** provides a step-by-step guide to analyzing publicly available spatial transcriptomics datasets. This tutorial uses **Hepatocellular carcinoma (HCC) resection specimens** and demonstrates how to load, preprocess, normalize, and visualize the data. The analysis is performed in the Jupyter notebook `st_tutorial_AKS.ipynb`, and all data and outputs are stored in the `data` folder.
**---

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
To run the analysis tutorial, you will need the following Python packages:
- **pandas**: For data manipulation.
- **numpy**: For numerical operations.
- **matplotlib**: For plotting and visualization.
- **seaborn**: For plotting and visualization.
- **scanpy**: For single-cell analysis and visualization.
- **celltypist**: For cell type annotation.
- **sklearn**: For machine learning algorithms and clustering.
- **umap**: For dimensionality reduction and visualization of high-dimensional data.
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
