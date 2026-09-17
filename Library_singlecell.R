## Library


### Core single-cell analysis
library(Seurat)             # remotes::install_version("Seurat", version = "5.0.1")
library(Signac)             # remotes::install_github('satijalab/seurat-wrappers')
library(SeuratWrappers)     # devtools::install_version(package = 'Signac', version = package_version('1.13.0'))


### Genomic data handling
library(BiocManager)        # install.packages("BiocManager", repos = "https://cloud.r-project.org")
# BiocManager::install(c("Rsamtools", "GenomeInfoDb", "GenomicRanges", "IRanges", "S4Vectors", "BiocGenerics", "biovizBase", "BSgenome"), force = TRUE, checkBuilt = TRUE)
library(Rsamtools)
library(GenomeInfoDb)
library(GenomicRanges)
library(IRanges)
library(S4Vectors)
library(BiocGenerics)


### Genome and annotation resources (mouse mm10)
# mm10
# BiocManager::install(c('BSgenome.Mmusculus.UCSC.mm10', 'EnsDb.Mmusculus.v79'), force = T, checkBuilt = T)
library(EnsDb.Mmusculus.v79)        
library(BSgenome.Mmusculus.UCSC.mm10)
library(EnsDb.Hsapiens.v86)
# human hg19
# BiocManager::install(c('BSgenome.Hsap
library(rtracklayer)
library(biovizBase)
library(BSgenome) 
# library(EnsDb.Hsapiens.v75)
# library(BSgenome.Hsapiens.UCSC.hg19)


### General-purpose data wrangling and plotting
library(dplyr)
library(tidyr)
library(ggplot2)
library(patchwork)
library(ggpubr) #install.packages("ggpubr")
library(ggrastr) #install.packages("ggrastr")
library(RColorBrewer)
library(viridis)
library(tibble)
library(data.table)
library(pbapply)
library(stringi)
library(matrixStats)
library(fastmatch)
library(future)
library(zoo)
library(rlang)


### File I/O
library(readxl)
library(writexl) #install.packages("writexl")
library(hdf5r)  #BiocManager::install("rhdf5") #install.packages("hdf5r")
#library(rhdf5)


### Downstream visualization and customization
library(scCustomize)       # Custom plotting functions for Seurat
library(ggseqlogo) #install.packages("ggseqlogo")


### Chromatin accessibility and motif analysis
#BiocManager::install(c("chromVAR","JASPAR2020","TFBSTools","motifmatchr"))
library(chromVAR)
library(JASPAR2020)
library(TFBSTools)
library(motifmatchr)


### Spatial, raster, and kernel density tools
library(terra) #install.packages("terra")
library(raster) # install.packages("raster")
library(ks) #install.packages("ks")


### Statistical modeling and diagnostics
library(DHARMa) #install.packages("DHARMa")


### Specialized single-cell tools
library(Nebulosa) #BiocManager::install("Nebulosa")
library(pagoda2) #install.packages("pagoda2")
library(Pando) #devtools::install_github('quadbio/Pando')
library(scCustomize) #install.packages("scCustomize")


### Optional / Experimental Packages (commented for reproducibility but not currently loaded)
# library(IKAP)             # Iterative clustering and principal components
# library(Herper)           # Conda environment management in R
# library(ComplexHeatmap)   # Advanced heatmap visualization
# library(clustree)         # Visualize clustering resolution trees
# library(reticulate)       # Python interface
# library(loupeR)           # Visualization of 10x Genomics Loupe data
# BiocManager::install("DirichletMultinomial")  # For multinomial modeling of cell-type distributions

# Additional installation sources (if needed)
# setRepositories(ind = 1:3, addURLs = c('https://satijalab.r-universe.dev', 'https://bnprks.r-universe.dev/'))
# install.packages(c("BPCells", "presto", "glmGamPoi"))