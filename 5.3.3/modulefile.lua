--
-- meme-suite 5.3.3 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: The MEME suite is a collection of tools for the discovery and analysis of sequence motifs."
-- "Keywords: singularity bioinformatics"

whatis("Name: MEME suite")
whatis("Version: 5.3.3")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: The MEME suite is a collection of tools for the discovery and analysis of sequence motifs.")

help([[
The MEME suite is a collection of tools for the discovery and analysis of sequence motifs.

To load the module, type

> module load meme-suite/5.3.3

To unload the module, type

> module unload meme-suite/5.3.3

Tools included in this module are

* ame
* dreme
* fimo
* glam2scan
* mast
* meme
* momo
* sea
* streme
* tomtom
* centrimo
* dust
* glam2
* gomo
* mcast
* meme-chip
* purge
* spamo
* tgene
* xstreme
]])

local package = "meme-suite"
local version = "5.3.3"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
