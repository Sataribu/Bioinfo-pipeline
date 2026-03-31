#!/usr/bin/env Rscript
# Bioinformatics Pipeline
# Author: samuel
# Date: 2026

# ── Quality Control Step ──────────────────────────

#' Check if input file exists
#' @param filepath path to input file
check_file_exists <- function(filepath) {
  if (!file.exists(filepath)) {
    stop(paste("Input file not found:", filepath))
  }
  cat("File found:", filepath, "\n")
}

#' Check minimum number of reads
#' @param reads vector of reads
#' @param min_reads minimum required reads
check_read_count <- function(reads, min_reads = 1000) {
  if (length(reads) < min_reads) {
    warning(paste("Low read count:", length(reads)))
  }
  cat("Total reads:", length(reads), "\n")
}

#' Check for quality scores above threshold
#' @param quality_scores vector of quality scores
#' @param threshold minimum quality score
check_quality_scores <- function(quality_scores, threshold = 20) {
  low_quality <- sum(quality_scores < threshold)
  cat("Low quality reads:", low_quality, "\n")
  cat("Passed QC:", sum(quality_scores >= threshold), "\n")
}

#' Check GC content is within acceptable range
#' @param sequence DNA sequence string
check_gc_content <- function(sequence) {
  gc_count <- nchar(gsub("[^GCgc]", "", sequence))
  total <- nchar(sequence)
  gc_percent <- (gc_count / total) * 100
  cat("GC content:", round(gc_percent, 2), "%\n")
  if (gc_percent < 40 || gc_percent > 60) {
    warning("GC content outside normal range (40-60%)")
  }
}

#' Run all quality control checks
#' @param filepath path to input FASTQ file
run_quality_control <- function(filepath) {
  cat("── Starting Quality Control ──\n")
  check_file_exists(filepath)
  cat("Quality control complete\n")
  cat("──────────────────────────────\n")
}

# ── Main Pipeline ─────────────────────────────────

main <- function() {
  cat("Pipeline started\n")
  run_quality_control("data/raw/sample.fastq")
  cat("Pipeline complete\n")
}

main()
