# Base R MA plot
plotMA(res, main = "MA Plot: Treated vs Control", ylim = c(-5, 5))

# Optional: ggplot2 MA plot for nicer visualization
res_df <- as.data.frame(res)
res_df$gene <- rownames(res_df)
res_df$significant <- ifelse(res_df$padj < 0.05, "yes", "no")

ggplot(res_df, aes(x = baseMean, y = log2FoldChange, color = significant)) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  scale_color_manual(values = c("no" = "grey", "yes" = "red")) +
  labs(title = "MA Plot: Treated vs Control",
       x = "Mean of Normalized Counts",
       y = "Log2 Fold Change") +
  theme_minimal()
