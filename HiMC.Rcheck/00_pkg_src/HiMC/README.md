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
Hi-MC also relies on the **stringr** package.
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
write.csv(classifications,"classifications.csv",row.names=FALSE)
```

##Caution

The classification tree was built using 54 specifically curated SNPs. If your dataset is missing more than a few of them, your results will **not** be accurate. These SNPs referenced are:

+ 825T
+ 1018G
+ 1438A
+ 1719A
+ 1736G
+ 2092T
+ 3505G
+ 3552A
+ 3594C
+ 4580A
+ 4769A
+ 4917G
+ 4977C
+ 5178A
+ 5442C
+ 6371T
+ 7028C
+ 8251A
+ 8414T
+ 8468C
+ 8703T
+ 9042T
+ 9055A
+ 9347G
+ 9950C
+ 10115C
+ 10398G
+ 10398A
+ 10400T
+ 10550G
+ 11177T
+ 11251G
+ 11947G
+ 12007A
+ 12308G
+ 12705C
+ 13263G
+ 13368A
+ 13506C
+ 13708A
+ 13789C
+ 14178C
+ 14318C
+ 14470C
+ 14560A
+ 14668T
+ 14766C
+ 15043A
+ 15326A
+ 15452A
+ 15535T
+ 16111T
+ 16189C
+ 16391A
