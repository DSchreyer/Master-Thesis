#!/bin/bash
./Pipeline.sh \
--projectName "data_test" \
--output /media/data/Daniel/data/test_output \
--genome /media/data/Daniel/data/genome/Mus_musculus.GRCm38.dna.primary_assembly.fa \
--annotation /media/data/Daniel/data/genome/Mus_musculus.GRCm38.96.gtf \
--indicesDir /media/data/Daniel/data/indices \
--data /media/data/Daniel/data/brandstaetter/CDN3CANXX/221931/ \
--read "R2" \
--barcode "R1" \
--num-cells 200 \
--umi-tools /media/data/Daniel/src/anaconda3/bin/umi_tools \
--trimmomatic /media/data/tools/Trimmomatic-0.36/trimmomatic-0.36.jar \
--fastqc /media/data/tools/FastQC/fastqc \
--RSEM /media/data/tools/RSEM-1.3.1/ \
--STAR /media/data/tools/STAR-2.7.0e/bin/Linux_x86_64/STAR \
--index "y" \
--threads 8 \
--rsemResult "genes" \
--rsemRef "yes" \
--rsemRefDir /media/data/Daniel/data/RSEM/ref/Mus_musculus.GRCm38.96 \
--bamFiles "no" \
--impute "no" \
--animal "mouse" \
--sex "F" \
--condition "Bassoon-Knockout" \
--treatment "treatment" \
> /media/data/Daniel/Scripts/pipeline.log.out

# For every single cell sample create one directory with the sequencing files
# Do not change project name, while running pipeline multiple times
# reference genome/transcriptome needs to be in .fa format
# annotation file needs .gtf format

# Software used:
# UMI-Tools: conda install -c bioconda umi_tools --- Version
# Trimmomatic: -preinstalled --- Version 0.36
# FastQC: -preinstalled --- FastQC v0.11.3
# STAR: https://github.com/alexdobin/STAR --- Version 2.7.0e
# RSEM: https://deweylab.github.io/RSEM/ --- Version 1.3.1
# scater: R-Package - Bioconductor --- Version 1.10.1
# scran: R-Package - Bioconductor --- Version 1.10.2
# Seurat: R-Package --- Version 3.0.0
# dplyr: R-Package --- Version 0.8.0.1
# ggplot2: R-Package --- Version 3.1.1

# reference genome file downloaded from ensembl - 30.04.19 - GRCm38.dna.primary_assembly.fa.gz
# annotation file downloaded from enselmbl - 30.04.19 - GRCm38.96.gtf.gz
