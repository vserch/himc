## ---- message=FALSE, warning=FALSE---------------------------------------
# Call library() to load the package
library("HiMC")

# Get file paths to .map and .ped files
map_file_path <- system.file("extdata", "1000g_MT_HIMC.map", package="HiMC")
ped_file_path <- system.file("extdata", "1000g_MT_HIMC.ped", package="HiMC")

# Use file paths to input the .map and .ped files
snp_data_frame <- HiMC::generate_snp_data(map_file_path,ped_file_path)

## ---- message=FALSE, warning=FALSE---------------------------------------
# Get the file path to the .csv file of expected results
exp_file_path <- system.file("extdata", "1000g_MT_HiMC_classifications.csv", package="HiMC")

# Use the file path to load the expected results as a dataframe
exp_data_frame <- read.csv(exp_file_path)

## ---- message=FALSE, warning=FALSE---------------------------------------
# Retrieve dataframe dimensions
snp_dims <- dim(snp_data_frame)
exp_dims <- dim(exp_data_frame)

# Report dataframe dimensions
cat("Size of SNP dataframe:\n rows:",snp_dims[1],"\n cols:",snp_dims[2],"\n",
  "Size of EXP dataframe:\n rows:",exp_dims[1],"\n cols:",exp_dims[2],sep="")

## ---- message=FALSE, warning=FALSE---------------------------------------
# Get the HiMC mitochondrial haplogroup classifications
classifications <- HiMC::getClassifications(snp_data_frame)

## ---- message=FALSE, warning=FALSE---------------------------------------
# Generate dataframe of comparative bools
comparison <- exp_data_frame==classifications

# Display some comparative bool information
print(head(comparison))
# How many fields are in conflict?
print(length(which(comparison==FALSE)))

## ---- message=FALSE, warning=FALSE---------------------------------------
# Extract haplogroups as a vector
haplogroups <- classifications[,"haplogroup"]

# Display the number of unique haplogroups
print(length(unique(haplogroups)))

## ---- message=FALSE, warning=FALSE, fig.width=7, fig.height=4------------
# Get the descending order of the proportion groups
desc_order <- rev(order(prop.table(table(haplogroups))))

# Make a barplot of the sample proportions in descending order
barplot(prop.table(table(haplogroups))[desc_order],las=2)

