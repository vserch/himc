## ---- message=FALSE, warning=FALSE, eval=FALSE---------------------------
#  # Install latest package version from CRAN
#  install.packages("HiMC")

## ---- message=FALSE, warning=FALSE---------------------------------------
# Call library() to load the package
library("HiMC")

# Define file paths to the .map and .ped files
map_file_path <- system.file("extdata", "HapMap_Mito_Seq_QC_2.map", package="HiMC")
ped_file_path <- system.file("extdata", "HapMap_Mito_Seq_QC_2.ped", package="HiMC")

# Use file paths to input the .map and .ped files
snp_data_frame <- HiMC::generate_snp_data(map_file_path,ped_file_path)

## ---- message=FALSE, warning=FALSE---------------------------------------
# Get the HiMC mitochondrial haplogroup classifications
classifications <- HiMC::getClassifications(snp_data_frame)

## ---- message=FALSE, warning=FALSE---------------------------------------
# Show the first few rows of selected columns
head(classifications[,c("Individual","haplogroup")])

## ---- message=FALSE, warning=FALSE, eval=FALSE---------------------------
#  # Write the dataframe to a .csv file
#  write.csv(classifications,"classifications.csv",row.names=FALSE)

