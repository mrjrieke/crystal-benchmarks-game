gcc -O3 -fomit-frame-pointer -funroll-loops fasta.c -o bin_c
crystal build fasta.cr --release -o bin_cr
go build -o bin_go fasta.go
javac fasta.java-2.java
