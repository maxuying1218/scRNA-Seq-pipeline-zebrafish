id=$1
fq_dir=$2
ref_dir=$3 ##cellranger reference genome files
fq_id=$4 ## fq data name

### after changing the fastq data name to cellranger format

cellranger count --id=$id --transcriptome=${ref_dir} --fastqs=${fq_dir} --sample=${fq_id}


