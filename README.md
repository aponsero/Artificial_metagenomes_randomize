# Artificial_metagenomes_randomize
pipeline to generate artificial metagenomes randomized on the composition

The complete pipeline will generate K artificial metagenomes of a given sequencing depth (Nb of reads). The number of organisms in each metagenome is defined by the user in the abundance vector input. If the number of organism is set lower than the total number of organisms in the genome list, each artificial metagenome will randomly select a set of organisms. The abundance of each organisms in the metagenome follows an abundance vector defined by the user. The association of each organism to an abundance is randomized.

## Requirements

### Python 3
This pipeline necessites Python3 as well as several packages :
  -[numpy] (https://www.numpy.org/)
  -[Sklearn] (https://scikit-learn.org/stable/)

### GemSim
This pipeline necessites to download and install [GemSim](https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-74) on the HPC.

## Quick start

### Edit scripts/config.sh file

please modify the following attributes

  - GEMSIM : path to the gemsim directory
  - VEC_ABUNDANCE : text file containing the abundance vector (comma separated list of floats). The number of organisms in the metagenome will be set as the length of the vector.
  - LIST_GENOMES : list of genomes that will constitute the artificial metagenomes
  - GENOMES_DIR : path to the directory where the genomes are stored, Beware GemSim won't work if this is not relative to $GEMSIM
  - RESULT_DIR : path to the output directory
# parameters
  - NB_READS : nb reads to generate
  - NB_METAGENOMES : nb metagenomes to generate
  - MODEL : error/length model to use

  - OUTNAME  : indicate here the name to use for the output files
  - MAIL_USER : indicate here your arizona.edu email
  - GROUP : indicate here your group affiliation

You can also modify

  - BIN = change for your own bin directory.
  - MAIL_TYPE = change the mail type option. By default set to "bea".
  - QUEUE = change the submission queue. By default set to "standard".
  
  ### Run pipeline
  
  Run 
  ```bash
  ./submit.sh
  ```
  This command will place two jobs in queue.
  
