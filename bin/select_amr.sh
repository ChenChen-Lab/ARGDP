
f=$1
a=`grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Enterobacterales|f__Enterobacteriaceae|g__Klebsiella|s__Klebsiella pneumoniae' $f|wc -l `
grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Enterobacterales|f__Enterobacteriaceae|g__Klebsiella|s__Klebsiella pneumoniae' $f|grep 'Beta' |cut -f 1,2|sort -u|wc -l|awk -v a=$a '{print "beta-KP\t"$0"\t"a}'
grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Enterobacterales|f__Enterobacteriaceae|g__Klebsiella|s__Klebsiella pneumoniae' $f|grep 'blaKPC' |cut -f 1,2|sort -u|wc -l|awk  -v a=$a  '{print "CR-KP\t"$0"\t"a}'
a=`grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Pseudomonadales|f__Pseudomonadaceae|g__Pseudomonas|s__Pseudomonas aeruginosa' $f|wc -l `
grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Pseudomonadales|f__Pseudomonadaceae|g__Pseudomonas|s__Pseudomonas aeruginosa'  $f |grep 'blaPAO'|cut -f 1,2|sort -u |wc -l|awk  -v a=$a  '{print "CR-PA\t"$0"\t"a}'
a=`grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Pseudomonadales|f__Moraxellaceae|g__Acinetobacter|s__Acinetobacter baumannii' $f|wc -l `
grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Pseudomonadales|f__Moraxellaceae|g__Acinetobacter|s__Acinetobacter baumannii'  $f|grep 'bla'|cut -f 1,2|sort -u|wc -l|awk  -v a=$a  '{print "beta-Ab\t"$0"\t"a}'
a=`grep 'd__Bacteria|p__Firmicutes|c__Bacilli|o__Bacillales|f__Staphylococcaceae|g__Staphylococcus|s__Staphylococcus aureus' $f|wc -l `
grep 'd__Bacteria|p__Firmicutes|c__Bacilli|o__Bacillales|f__Staphylococcaceae|g__Staphylococcus|s__Staphylococcus aureus'  $f|grep 'mecA'|cut -f 1,2|sort -u|wc -l|awk  -v a=$a  '{print "MRSA\t"$0"\t"a}'
a=`grep 'd__Bacteria|p__Firmicutes|c__Bacilli|o__Lactobacillales|f__Enterococcaceae|g__Enterococcus|s__Enterococcus faecalis' $f|wc -l `
grep 'd__Bacteria|p__Firmicutes|c__Bacilli|o__Lactobacillales|f__Enterococcaceae|g__Enterococcus|s__Enterococcus faecalis'  $f|grep 'van'|cut -f 1,2|sort -u|wc -l|awk  -v a=$a  '{print "VRE\t"$0"\t"a}'
a=`grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Enterobacterales|f__Enterobacteriaceae' $f|grep -v 's__Klebsiella pneumoniae'|wc -l `
grep 'd__Bacteria|p__Proteobacteria|c__Gammaproteobacteria|o__Enterobacterales|f__Enterobacteriaceae'  $f|grep -v 's__Klebsiella pneumoniae'|grep 'bla'|cut -f 1,2|sort -u|wc -l|awk  -v a=$a  '{print "ESBL\t"$0"\t"a}'

