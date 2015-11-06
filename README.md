# Hi-MC: High-throughput Mitochondrial haplogroup Classification
### Purpose
The Hi-MC package provides high-level mitochondrial haplogroups given standard PLINK *.map* and *.ped* files.
### Installation
```R
install.packages("devtools")
library("devtools")
install_github("vserch/himc")
library("HiMC")
```
### Usage
The Hi-MC package takes in standard PLINK *.map* and *.ped* files as arguments.
The *.map* file should have **4** columns and the *.ped* file should have 2**V**+6 columns, where **V** is the number of variants.

Classifying your subjects is a 2-step process. First, input your *.map* and *.ped* files into **Hi-MC**:
```R
snp_data_frame <- HiMC::generate_snp_data("my_subjects.map","my_subjects.ped")
```

Then, load the haplogroup tree nodes, and run the classifier:

```R
data(nodes)
classifications <- HiMC::getClassifications(snp_data_frame)
```

From there, explore the data frame in R, or export it to CSV:

```R
write.csv("classifications.csv",classifications,row.names=FALSE)
```
