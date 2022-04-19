#!/bin/bash

#rm tmp.html
string=''
for i in "$*"; do string=${string}${i}; done;
string=${string// /+}
#webpage=$(curl 'https://www.google.com/search?q='${string}'&source=lnms&tbm=shop' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0')
#echo ${webpage}| pup "div.sh-pr__product-results-grid sh-pr__product-results"
curl 'https://www.google.com/search?q='${string}'&source=lnms&tbm=shop' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0'>>tmp.html
