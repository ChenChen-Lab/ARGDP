file=$1
cut -f 2,5 ${file} |sort -u|cut -f 2|sort|uniq -c|sort -nr |head >>${file}.count
grep 'Beta-lactam' ${file}|sed 's/(/\t/'|cut -f 2,3|sort -u|cut -f 2|sort |uniq -c|sort -nr|head >>${file}.count
grep 'Quinolone' ${file}|sed 's/(/\t/'|cut -f 2,3|sort -u|cut -f 2|sort |uniq -c|sort -nr|head >>${file}.count
grep 'Aminoglycoside' ${file}|sed 's/(/\t/'|cut -f 2,3|sort -u|cut -f 2|sort |uniq -c|sort -nr|head >>${file}.count
grep 'Fosfomycin' ${file}|sed 's/(/\t/'|cut -f 2,3|sort -u|cut -f 2|sort |uniq -c|sort -nr|head >>${file}.count
