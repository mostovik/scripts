#alexsey rebouças
dt=`date +%d_%m_%y.php`
arquivos=(`ls *.php`);tamanhoarray=${#arquivos[*]}
arq=`ls *.php`

arqflt=(`gd list | egrep -w php. | cut -d' ' -f1 | sort -r`);arqcont=${#arqflt[*]}
arqfilter=(`gd list | egrep -w php. | cut -d' ' -f4 | sort | uniq`);arqcount=${#arqfilter[@]}


#for x in $(eval echo {0..$((arqcont-1))});do
#if [ "${arquivos[$x]}" == "${arqfilter[$x+1]}" ]; then 
#echo ${arqfilter[(($x+1))]}"="${arquivos[$x]}
#echo ${arqfilter[(($x-1))]}"="${arquivos[$x]}
#gd update ${arqfilter[(($i-1))]} ${arquivos[$i]}
#fi
#done
#done
clear
echo "##list existents files remotlly"
for x in $(eval echo {0..$((arqcount-1))});do
echo ${arqfilter[(($x))]} 
done
echo -e "\n\n\n"
echo "#list existents files lacially"
for x in $(eval echo {0..$((arqcount-1))});do
echo ${arquivos[(($x))]}
done
echo -e "\n\n\n"
echo "#list id gdrive from files"
for x in $(eval echo {0..$((arqcont-1))});do
echo ${arqflt[(($x))]}
done

echo -e "\n\n\n"
#condition test
for x in $(eval echo {0..$((tamanhoarray-1))});do
if [ ${arquivos[(($x))]} == ${arqfilter[(($x))]} ]; then
gd update ${arqflt[(($x))]} ${arquivos[(($x))]}
else
gd upload ${arquivos[(($x))]}
fi
done
