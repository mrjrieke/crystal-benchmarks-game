gcc -O3 -fomit-frame-pointer -funroll-loops binarytrees.c -o bin_c -lm
g++ -fomit-frame-pointer -funroll-loops -std=c++11 binarytrees.cpp -O3 -o bin_cpp
crystal build binarytrees.cr --release -o bin_cr
javac binarytrees.java
go build -o bin_go binarytrees.go
