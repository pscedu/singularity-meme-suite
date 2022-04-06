--
-- meme-suite 5.4.1 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: The MEME suite is a collection of tools for the discovery and analysis of sequence motifs."
-- "Keywords: singularity bioinformatics"

whatis("Name: MEME suite")
whatis("Version: 5.4.1")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: The MEME suite is a collection of tools for the discovery and analysis of sequence motifs.")

help([[
The MEME suite is a collection of tools for the discovery and analysis of sequence motifs.

To load the module, type

> module load meme-suite/5.4.1

To unload the module, type

> module unload meme-suite/5.4.1

Tools included in this module are

* alphtype
* fasta-grep
* import-html-template
* psp-gen
* ama
* fasta-hamming-enrich
* index-fasta-file
* qvalue
* ama-qvalues
* fasta-holdout-set
* iupac2meme
* ramen
* beeml2meme
* fasta-make-index
* jaspar2meme
* ranksum_test
* centrimo-plots
* fasta-most
* llr
* reconcile-tree-alignment
* ceqlogo
* fasta-re-match
* mast_xml_to_html
* reduce-alignment
* chen2meme
* fasta-shuffle-letters
* mast_xml_to_txt
* remove-alignment-gaps
* clustalw2fasta
* fasta-subsample
* matrix2meme
* rna2meme
* clustalw2phylip
* fasta-unique-names
* meme-chip_html_to_tsv
* rsat-retrieve-seq
* compute-prior-dist
* fisher_exact
* meme-get-motif
* rsat-supported-organisms
* compute-uniform-priors
* fitevd
* meme-rename
* scpd2meme
* create-priors
* gendb
* meme2alph
* sd
* dreme_xml_to_html
* getsize
* meme2images
* sites2meme
* dreme_xml_to_txt
* glam2format
* meme2meme
* streme_xml_to_html
* dtc
* glam2html
* meme_xml_to_html
* taipale2meme
* elm2meme
* glam2mask
* motif-shuffle-columns
* tamo2meme
* fasta-center
* glam2psfm
* motiph
* tomtom_xml_to_html
* fasta-dinucleotide-shuffle
* glam2scan2html
* nmica2meme
* transfac2meme
* fasta-fetch
* gomo_highlight
* plotgen
* uniprobe2meme
* fasta-from-bed
* hart2meme-bkg
* pmp_bf
* xstreme_html_to_tsv
* fasta-get-markov
* hartemink2psp
* priority2meme
]])

local package = "meme-suite"
local version = "5.4.1"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
