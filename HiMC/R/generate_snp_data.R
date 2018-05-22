#' SNP Data Generator
#'
#' Takes in a plink map file and a plink ped file and creates a dataframe with headers
#' @param map_file The name of the .map file. Should be tab delimited with no header.
#' @param ped_file The name of the .ped file. Should be space delimited with no header.
#' @keywords map ped snp
#' @export
#' @examples
#' mapfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.map",package="HiMC")
#' pedfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.ped",package="HiMC")
#' generate_snp_data(mapfile,pedfile)

generate_snp_data <- function(map_file,ped_file) {
	map <- read.csv(map_file,sep="\t",header=FALSE,stringsAsFactors=FALSE)
	header_row <- c("Family","Individual","Father","Mother","Sex","Phenotype")
	snps = map[,4]
	new_header = c(header_row,snps)
	ped <- read.csv(ped_file,sep=" ",header=FALSE,stringsAsFactors=FALSE)
	range1 = seq(1,6,by=1)
	snp_data = data.frame(seq(1,nrow(ped),by=1))
	for (i in range1) {
		snp_data[,i] = ped[,i]
	}
	range2 = seq(7,ncol(ped),by=2)
	for (i in range2) { 
		index = ((i - 7) / 2) + 1
		snp_data[,index + 6] = paste(ped[,i],ped[,i+1])
	}
	names(snp_data) <- new_header
	return(snp_data)
}
