getwd()
input_dir = "raw_data"
output_dir = "results"
if(!dir.exists(output_dir)) {
  dir.create(output_dir)
}
if(!dir.exists(input_dir)) {
  dir.create(input_dir)
}
files_to_process= c("DEGs_Data_1.csv", "DEGs_Data_2.csv")
result_list=list()
# customized function :
classify_gene <- function(logFC, padj) {
  if (is.na(padj)) padj <- 1
  
  if(logFC > 1 & padj < 0.05) {
    return("Upregulated")
    }
    else if( logFC < -1 & padj < 0.05){
      return("Downregulated")
    } else {
      return("Not_Significant") 
        }
}
for (files in files_to_process) {
cat("\nprocess:",files,"\n")
  input_file_path = file.path(input_dir, files)
  data= read.csv(input_file_path, header = TRUE)
  cat("fileimported..n")
  if ("padj" %in% names(data)) {
    missing_count = sum(is.na(data$padj))
    cat("missing values in padj",missing_count,"\n")
    data$padj[is.na(data$padj)] = 1
  }
  data$status = mapply(classify_gene, data$logFC, data$padj)
  
  cat("classify_gene has been calculated.\n")
  #save result in R
  result_list[[files]] = data
  #save result in result folder
  output_file_path = file.path(output_dir, paste0("calssify_gene_result", files))
  write.csv(data, output_file_path, row.names = FALSE)
  cat("result saved to:",output_file_path,"\n")
}
