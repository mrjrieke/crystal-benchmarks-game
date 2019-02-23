gcc -O3 -ffast-math -fomit-frame-pointer -funroll-loops mandelbrot.c -o bin_c
crystal build mandelbrot.cr --release -o bin_cr
javac mandelbrot.java
go build -o bin_go mandelbrot.go
