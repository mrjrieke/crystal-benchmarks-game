if [ ! -f 1.txt ]; then
	sh generate.sh
fi

#gcc -O3 -fomit-frame-pointer -o bin_c knucleotide.c
echo Crystal
../xmtime.rb crystal build knucleotide.cr --release -o bin_cr : cat 1.txt | ./bin_cr
echo Go
../xmtime.rb go build -o bin_go knucleotide.go : cat 1.txt | ./bin_go
echo Java
../xmtime.rb javac knucleotide.java : cat 1.txt | java knucleotide
