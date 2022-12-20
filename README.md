# PhyloSeqGlom
# Language: R
# Input: TXT
# Output: DIR
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: phyloSeqCompanion_0.2.1, microbiome_1.12.0
PluMA plugin that takes PhyloSeq (McMurdie et al, 2013) and extracts a specific taxonomic level.
The plugin accepts as input a parameter file of keyword-value pairs.  Abundances and taxonomy are formatted according to PhyloSeq (McMurdie et al, 2013):

OTU: Abundances
META: Sample data
TREE: Taxonomy
LEVEL: Taxonomic level (integer)

Modified PhyloSeq data is output to the user-specified directory.
