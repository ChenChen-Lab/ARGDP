fa=$1
db=$2
##find candidate AMR genes
perl /datapool/stu/yuejl/genome-analysis-pipeline/bin/run_abricate.pl -abricate  -sl ${fa}  -db ${db}  -o amr

##get fasta
fastaFromBed -fi ${fa} -bed ${fa}.bed >${fa}.amr.fa

##find representive sequence for AMR
cat ${db}/sequence.fa ${fa}.amr.fa >${db}_update.fa


