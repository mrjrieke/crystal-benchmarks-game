if [ ! -f 1.txt ]; then
	sh generate.sh
fi

echo Crystal
cat 1.txt | ../xmptime.rb ./bin_cr
echo C
cat 1.txt | ../xmptime.rb ./bin_c
#echo Ruby
#cat 1.txt | ../xmptime.rb ruby regexdna.rb
echo Java
cat 1.txt | ../xmptime.rb java regexredux
echo Go
cat 1.txt | ../xmptime.rb ./bin_go

