echo Crystal
cat 1.txt | ../xtime.rb ./bin_cr > /dev/null
echo C
cat 1.txt | ../xtime.rb ./bin_c > /dev/null
#echo Ruby
#cat 1.txt | ../xtime.rb ruby revcomp.rb > /dev/null
#echo Java
#../xtime.rb java revcomp > /dev/null
echo Go
../xtime.rb ./bin_go > /dev/null

