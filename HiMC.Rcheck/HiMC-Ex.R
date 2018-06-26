pkgname <- "HiMC"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "HiMC-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('HiMC')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("generate_snp_data")
### * generate_snp_data

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: generate_snp_data
### Title: SNP Data Generator
### Aliases: generate_snp_data
### Keywords: map ped snp

### ** Examples

mapfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.map",package="HiMC")
pedfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.ped",package="HiMC")
generate_snp_data(mapfile,pedfile)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("generate_snp_data", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("getAllPaths")
### * getAllPaths

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: getAllPaths
### Title: Path Generator
### Aliases: getAllPaths
### Keywords: node path

### ** Examples

#internal function, not meant to be called externally
mapfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.map",package="HiMC")
pedfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.ped",package="HiMC")
snpfile <- generate_snp_data(mapfile,pedfile)
full_path_list <- getAllPaths(snpfile,HiMC::root,"")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("getAllPaths", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("getClassifications")
### * getClassifications

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: getClassifications
### Title: getClassifications output generator
### Aliases: getClassifications
### Keywords: classification haplogroup list path

### ** Examples

mapfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.map",package="HiMC")
pedfile <- system.file("extdata","HapMap_Mito_Seq_QC_2.ped",package="HiMC")
snpfile <- generate_snp_data(mapfile,pedfile)
classifications <- getClassifications(snpfile)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("getClassifications", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("getFinalPathList")
### * getFinalPathList

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: getFinalPathList
### Title: getFinalPathList internal function
### Aliases: getFinalPathList
### Keywords: list path

### ** Examples

#internal function, not meant to be called externally
filtered_paths <- getFinalPathList(c("A -> B","A -> B -> C"))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("getFinalPathList", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("getGroupFromPath")
### * getGroupFromPath

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: getGroupFromPath
### Title: getFinalPathList internal function
### Aliases: getGroupFromPath
### Keywords: classification haplogroup list path

### ** Examples

#internal function, not meant to be called externally
group <- getGroupFromPath("A -> B -> C")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("getGroupFromPath", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("getPathList")
### * getPathList

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: getPathList
### Title: getPathList internal function
### Aliases: getPathList
### Keywords: list path prettify

### ** Examples

#internal function, not meant to be called externally
paths <- getPathList(data.frame())



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("getPathList", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("missingSnps")
### * missingSnps

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: missingSnps
### Title: validData boolean check
### Aliases: missingSnps
### Keywords: df missing node snp

### ** Examples

#internal function, not meant to be called externally
is_dataframe_row_missing_snps_from_node <- missingSnps(data.frame(),HiMC::root)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("missingSnps", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("numChildren")
### * numChildren

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: numChildren
### Title: NumChildren
### Aliases: numChildren
### Keywords: children node snp

### ** Examples

#internal function, not meant to be called externally
node_tail_length = numChildren(HiMC::root)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("numChildren", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("numReqs")
### * numReqs

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: numReqs
### Title: NumReqs
### Aliases: numReqs
### Keywords: node snp

### ** Examples

#internal function, not meant to be called externally
number_of_required_snps <- numReqs(HiMC::root)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("numReqs", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("numSnps")
### * numSnps

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: numSnps
### Title: NumSnps
### Aliases: numSnps
### Keywords: node snp

### ** Examples

#internal function, not meant to be called externally
amount_of_snps_in_node <- numSnps(HiMC::root)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("numSnps", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("validData")
### * validData

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: validData
### Title: validData boolean check
### Aliases: validData
### Keywords: data df node snp valid

### ** Examples

#internal function, not meant to be called externally
df_row_meets_criteria_for_node_requirements <- validData(data.frame(),HiMC::root)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("validData", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("validPath")
### * validPath

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: validPath
### Title: validPath boolean check
### Aliases: validPath
### Keywords: df node path snp valid

### ** Examples

#internal function, not meant to be called externally
df_row_meets_criteria_for_node_path <- validPath(data.frame(),HiMC::root)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("validPath", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
