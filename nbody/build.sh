gcc -O3 -fomit-frame-pointer -funroll-loops nbody.c -o bin_c -lm
crystal build nbody.cr --release -o bin_cr
go build -o bin_go nbody.go
javac nbody.java
