sample=$1
fq1=$2
fq2=$3
db=$4
fa=$5
##find new AMR if possible
sh bin/amr_identified.sh  ${db} ${fa}

##identified AMR in samples
bowtie2  --very-sensitive  -p 10 -x resfinder  -1 ${fq1} -2 ${fq2} --al-conc-gz ${sample}.map.fq.gz  --un-conc-gz  ${sample}.unmap.fq.gz  -S ${sample}.sam 2> bowtie2.log
samtools view -F 4 ${sample}.sam | awk '{print $3}' | sort | uniq -c | awk '{print $2}' >${sample}.resfinder.list

##find drug-resistance bacterial
my_join -F 1 -f 2 -a ${sample}.final.candi -b ${sample}.resfinder.list >${sample}.bac.amr_identified

##find critial MDR bacteral
bin/select_amr.sh ${sample}.bac.amr_identified

##caculate top AMR type and AMR bacterial
bin/calculate_amr.sh ${sample}.bac.amr_identified