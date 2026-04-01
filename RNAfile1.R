# Load libraries
library(DESeq2)
library(ggplot2)

# -------------------------------
# Step 1: Load your data
# Replace with your actual files
# counts.csv = genes x samples count matrix
# metadata.csv = sample info with treatment and infection_status
# -------------------------------
countData <- read.csv("counts.csv", row.names = 1)
colData <- read.csv("metadata.csv", row.names = 1)

# Make sure factors are correctly set
colData$treatment <- factor(colData$treatment, levels = c("control", "treated"))
colData$infection_status <- factor(colData$infection_status, levels = c("susceptible", "infected"))

# -------------------------------
# Step 2: Create DESeq2 dataset
# -------------------------------
dds <- DESeqDataSetFromMatrix(countData = countData,
                              colData = colData,
                              design = ~ treatment + infection_status)

# Pre-filter low counts
dds <- dds[rowSums(counts(dds)) >= 10, ]

# Run DESeq2 analysis
dds <- DESeq(dds)

# -------------------------------
# Step 3: Get results
# Compare treated vs control
# -------------------------------
res <- results(dds, contrast = c("treatment", "treated", "control"))

# Summary
summary(res)

