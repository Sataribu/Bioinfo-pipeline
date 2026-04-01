#Project Title
Persistence of Tuberculosis (TB): RNA-Seq Analysis of Treatment vs Infectious Stages

#Description
Tuberculosis (TB) remains a persistent global health challenge, requiring both medical intervention and public health awareness to effectively control its spread. While traditional approaches focus on diagnosis and treatment, there is a growing need for detailed biomedical analysis to better understand the mechanisms of infection and transmission.
This project leverages RNA sequencing (RNA-Seq) to investigate the molecular differences between treatment stages and infectious stages of TB. The analysis aims to:
•	Identify gene expression patterns associated with disease progression 
•	Determine the timeline of infection and transition between TB stages 
•	Explore potential transmission pathways, including close-contact interactions 
•	Provide data-driven insights to support public health awareness and prevention strategies 
By integrating genomic data with computational analysis, this study contributes to a deeper understanding of TB persistence and spread.

#Dependencies
This project relies on a combination of bioinformatics tools and statistical analysis packages:
 Bioinformatics Tools
•	SRA Toolkit – for downloading sequencing data 
•	Trim Galore – for quality trimming of reads 
•	SPAdes – for genome assembly 
•	featureCounts – for read quantification 
 Data Sources
•	Reference genome obtained from NCBI TB sequence database 
•	RNA-Seq data generated from Illumina sequencing reads 
  R Packages
•	DESeq2 – differential gene expression analysis 
•	ggplot2 – data visualization 
•	tidyverse – data manipulation 
•	EnhancedVolcano – volcano plot visualization

#Installation Instructions
1. HPC Environment Setup
Access HPC cluster via SSH:
ssh username@hpc2
Load required modules (example):
module load sratoolkit
module load spades
module load trim_galore

2. R Environment Setup

Install required R packages in RStudio or terminal:

install.packages("tidyverse")
install.packages("ggplot2")

# Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("DESeq2")
BiocManager::install("EnhancedVolcano")

##Execution Instructions

#1 Bioinformatics Workflow
. Download RNA-Seq data using SRA Toolkit
. Perform quality control and trimming using Trim Galore
. Assemble reads into FASTA format using SPAdes
. Align reads and quantify gene expression using featureCounts

#2 Statistical Analysis
. Perform differential expression analysis using DESeq2
. Compare:
   1. Treatment vs Control
   2. Infectious vs Susceptible stages

#3 Visualization
. Generate:
   1. Volcano plots for identifying significant genes
   2. MA plots for normalized expression trends
. Interpret results to identify:
. Overreactive genes
. Disease progression markers

#Project Goals
. Understand the molecular basis of TB progression
. Identify biomarkers for early detection and staging
. Support public health strategies through data-driven insights
. Bridge the gap between genomic research and social awareness

#Future Improvements (Suggested)
. Integrate machine learning models for prediction of TB stages
. Include larger datasets for improved statistical power
. Develop a web-based dashboard for visualization
. Incorporate clinical metadata (age, gender, treatment history)
. Automate the pipeline using workflow tools like Snakemake or Nextflow

#Contact
student ID: 31030815
Email: 31030815@sun.ac.za
name: Ovuzonye Samuel Ataribu
Campus: tygerberg campus
Faculty: Faculty of Medicine and Health Science 
Programme:MSc Bioinformatics of Infectioud Diseases and Pathogen Genomics
