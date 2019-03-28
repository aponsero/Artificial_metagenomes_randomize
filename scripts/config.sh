export CWD=$PWD
# where programs are
export GEMSIM=""
# where the dataset to prepare is
export VEC_ABUNDANCE="/rsgrps/bhurwitz/alise/my_scripts/Artificial_metagenomes_randomize/scripts/workers/abundance_vec.txt"
export LIST_GENOMES="/rsgrps/bhurwitz/alise/my_scripts/Artificial_metagenomes_randomize/scripts/workers/mock_genomes.txt"
export GENOMES_DIR=""
export RESULT_DIR="/rsgrps/bhurwitz/alise/my_scripts/Artificial_metagenomes_randomize/scripts/workers/test_pipeline"
# parameters
export NB_READS="" #nb reads to generate
export NB_METAGENOMES=60 #nb metagenomes to generate
export MODEL="" #error/legth model to use
#place to store the scripts
export SCRIPT_DIR="$PWD/scripts"
export WORKER_DIR="$SCRIPT_DIR/workers" 
# User informations
export QUEUE="standard"
export GROUP="bhurwitz"
export MAIL_USER="aponsero@email.arizona.edu"
export MAIL_TYPE="bea"

#
# --------------------------------------------------
function init_dir {
    for dir in $*; do
        if [ -d "$dir" ]; then
            rm -rf $dir/*
        else
            mkdir -p "$dir"
        fi
    done
}

# --------------------------------------------------
function lc() {
    wc -l $1 | cut -d ' ' -f 1
}
