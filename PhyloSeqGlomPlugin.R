library(microbiome)
library(phyloseqCompanion)

dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")

input <- function(inputfile) {
  pfix = prefix()

  parameters <- read.table(inputfile, as.is=T);
  rownames(parameters) <- parameters[,1]
  print(parameters["OTU", 2])
  otu_file <- paste(pfix, toString(parameters["OTU", 2]), sep="/")
  tax_file <- paste(pfix, toString(parameters["TAX", 2]), sep="/")
  sample_file <- paste(pfix, toString(parameters["META", 2]), sep="/")
  x <<- read_csv2phyloseq(otu.file = otu_file, taxonomy.file = tax_file, metadata.file = sample_file, sep=",")
  level <<- parameters["LEVEL", 2]
}

run <- function() {

  y <<- tax_glom(x, level)
}

output <- function(outputfile) {
  write_phyloseq(y, type = "OTU", path = outputfile)
  write_phyloseq(y, type = "TAXONOMY", path = outputfile)
  write_phyloseq(y, type="METADATA", path=outputfile)
}
