echo Crystal
../xmtime.rb crystal build mandelbrot.cr --release -o bin_cr : ./bin_cr 10000 > /dev/null
echo C
../xmtime.rb gcc -O3 -ffast-math -fomit-frame-pointer -funroll-loops mandelbrot.c -o bin_c : ./bin_c 10000 > /dev/null
echo Go
../xmtime.rb go build -o bin_go mandelbrot.go : ./bin_go 10000 > /dev/null
echo Java
../xmtime.rb javac mandelbrot.java : java mandelbrot 10000 > /dev/null
