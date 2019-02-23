gcc -O3 -fomit-frame-pointer -funroll-loops spectralnorm.c -o bin_c -lm
crystal build spectralnorm.cr --release -o bin_cr
javac spectralnorm.java
go build -o bin_go spectralnorm.go
