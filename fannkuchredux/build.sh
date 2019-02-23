gcc -O3 -fomit-frame-pointer -funroll-loops fannkuchredux.c -o bin_c
crystal build fannkuchredux.cr --release -o bin_cr
javac fannkuchredux.java
go build -o bin_go fannkuchredux.go
