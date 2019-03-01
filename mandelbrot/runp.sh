echo Crystal
../xmptime.rb ./bin_cr 10000 > /dev/null
echo C
../xmptime.rb ./bin_c 10000 > /dev/null
echo Go
../xmptime.rb ./bin_go 10000 > /dev/null
echo Java
../xmptime.rb java mandelbrot 10000 > /dev/null
