# Glioblastoma mitotic-bookmarking screen — analysis code

Analysis and visualization code for the MSc thesis *Mitotic Bookmarking by
Histone Modification and Chromatin Remodelling Enzymes in Glioblastoma at the
Single-Cell Resolution* (Kevin Mathews, RUB, 2026).

The thesis screen rests on differential expression (FindMarkers, log2FC +
adjusted p-value). Upstream alignment (CellRanger-arc v2.0.2) was run once on
the command line and is described in the thesis Methods, not reproduced here.

## Files → thesis sections

| File | Purpose | Produces |
|---|---|---|
| `hGlio_QC.Rmd` | Methods 3.1 (QC); Fig S1 | Human snRNA/ATAC QC, filtering, preprocessing |
| `mGlio_QC.Rmd` | Methods 3.1 (QC); Fig S1 | Mouse QC, doublet removal, preprocessing |
| `TCGA_GBM_expression_profile.Rmd` | Pulling TCGA reference dataset for analysis | TCGA dataset for comparison and identification of cluster subtypes in Fig 3 |
| `Glioma_Visualization_main.Rmd` | Results 4.1 & 4.2; Figs 3, 4, 5, S2, S3, S4 | Subtype annotation, module scores, DE screen, rank concordance, log2FC heatmaps, candidate feature/dot plots |
Library_singlecell.R | Shared library/function loading | sourced by the other scripts |

## Notes
- Set the `projPath` in the config chunk of each file to your local path.
- `Glioma_Visualization_main.Rmd` expects `hGlio_final.rds` and `mGlio_final.rds`
  (outputs of the two QC files). Raw and processed sequencing data are not included
  (unpublished patient-derived material).
- Package versions: Seurat v5, Signac, CellRanger-arc v2.0.2. 
- TCGA dataset was acquired from https://gliovis.bioinfo.cnio.es/ : Go to explore tab -> Select Adult -> Select TCGA GBM in the first dropdown -> select RNA-Seq in Platform dropdown -> Dataset download
