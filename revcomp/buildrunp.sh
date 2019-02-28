if [ ! -f 1.txt ]; then
	sh generate.sh
fi

javac revcomp.java
echo Crystal
cat 1.txt | ../xmptime.rb crystal build revcomp.cr --release -o bin_cr : ./bin_cr > /dev/null
echo C
cat 1.txt | ../xmptime.rb gcc -O3 -fomit-frame-pointer -o bin_c revcomp.c : ./bin_c > /dev/null
#echo Ruby
#cat 1.txt | ../xmptime.rb ruby revcomp.rb > /dev/null
#echo Java
#../xmptime.rb javac revcomp.java : java revcomp > /dev/null
echo Go
../xmptime.rb go build -o bin_go revcomp.go : ./bin_go > /dev/null

