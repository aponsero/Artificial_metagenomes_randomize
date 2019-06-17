export CWD=$PWD
# where programs are
export GEMSIM=""
# where the dataset to prepare is
export VEC_ABUNDANCE="/rsgrps/bhurwitz/alise/my_data/De_Novo_meta/Simulated_datasets/abundance_vec2.txt"
export LIST_GENOMES="/rsgrps/bhurwitz/alise/my_data/De_Novo_meta/Simulated_datasets/SimSetN_genomes.txt"
export GENOMES_DIR="../../my_data/De_Novo_meta/Simulated_datasets/orginal_genomes" #GemSim won't work if this is not relative to $GEMSIM
export RESULT_DIR="/rsgrps/bhurwitz/alise/my_data/De_Novo_meta/Simulated_datasets/SimSetN2_2"
export REL_OUT="../../my_data/De_Novo_meta/Simulated_datasets/SimSetN2_2" #output dir relative to $GEMSIM
# parameters
export NB_READS="50000000" #nb reads to generate
export NB_METAGENOMES=30 #nb metagenomes to generate
export MODEL="models/ill100v4_p.gzip" #error/legth model to use
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
