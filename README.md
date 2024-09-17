# scRNA-Seq-pipeline-zebrafish
scRNA-Seq pipeline for a zebrafish dataset

## Software requirement
-cellranger
-R package: Seurat, ggplot2, tidyverse, monocle, SingleCellExperiment, reshape2

## Step1 Mapping fastq reads
Use cellranger to map reads and prepare expression matrix and barcode information.  
The code is stored at [1.prepare_count_matrix](./1.prepare_count_matrix).  

## Step2 Cell type annotation and  markers identification
Use Seurat R package to reduce demensions, find clusters, annotate cell type an find markers for each cell type.  
The code is stored at [2.filter_cluster_marker_finding](./2.filter_cluster_marker_finding)  
Here is an example of results:  
![image](https://github.com/maxuying1218/scRNA-Seq-pipeline-zebrafish/blob/main/figures/1.identify_macrophage.jpg)
![image](https://github.com/maxuying1218/scRNA-Seq-pipeline-zebrafish/blob/main/figures/2.macrophage_clusters.split_by_sample.jpg)

## Step3 Cell trajectory inference
Use Monocle R package to find variable genes, reduce demensions and infer cell trajectory.  
The code is stored at [3.cell_trajectory](./3.cell_trajectory)  
Here is an example of results:  
![image](https://github.com/maxuying1218/scRNA-Seq-pipeline-zebrafish/blob/main/figures/5.macrophage_trajectory.jpg)
