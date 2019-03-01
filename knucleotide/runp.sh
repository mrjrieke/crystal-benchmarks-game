if [ ! -f 1.txt ]; then
	sh generate.sh
fi

#gcc -O3 -fomit-frame-pointer -o bin_c knucleotide.c
echo Crystal
../xmptime.rb cat 1.txt | ./bin_cr
echo Go
../xmptime.rb cat 1.txt | ./bin_go
echo Java
../xmptime.rb cat 1.txt | java knucleotide
