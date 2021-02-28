str='*.'$2
mkdir $3
for file in `find $1 -type f -name $str`
do
   newname=$(basename "$file")
   while [ -e $3/$newname ]
   do
      newname=$(basename "$newname" | cut -d. -f1)1.$2
   done

   cp $file $3/$newname
done
tar -cf $(basename "$4" | cut -d. -f1).tar.gz $3
echo 'done'
