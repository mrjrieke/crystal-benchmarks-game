echo Crystal
../xmtime.rb crystal build fasta.cr --release -o bin_cr : ./bin_cr 15000000 > /dev/null
echo C
../xmtime.rb gcc -O3 -fomit-frame-pointer -funroll-loops fasta.c -o bin_c : ./bin_c 15000000 > /dev/null
echo Go
../xmtime.rb go build -o bin_go fasta.go : ./bin_go 15000000 > /dev/null
echo Java
../xmtime.rb javac fasta.java-2.java : java fasta 15000000 > /dev/null
