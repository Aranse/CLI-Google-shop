#!/bin/bash

string=''
for i in "$*"; do string=${string}${i}; done;
string=${string// /+}
webpage=$(curl 'https://www.google.com/search?q='${string}'&source=lnms&tbm=shop' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0')
titulos=$(echo $webpage |  pup "h4" | sed 's/<.*>//g')
precios=$(echo $webpage | pup ".QIrs8 text{}") # |sed "s/<.*>//g"|sed 's/[^0-9.,]*//g')
links=$(echo $webpage|pup "a.xCpuod attr{href}") #|sed 's/^<a class=.*%//g')
echo ${titulos}
echo "#########################################################################################"
echo ${precios}/n
echo "#########################################################################################"
echo ${links}
