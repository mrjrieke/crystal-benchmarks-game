echo Crystal
../xmtime.rb crystal build nbody.cr --release -o bin_cr : ./bin_cr 10000000
echo C
../xmtime.rb gcc -O3 -fomit-frame-pointer -funroll-loops nbody.c -o bin_c -lm : ./bin_c 10000000
echo Java
../xmtime.rb javac nbody.java : java nbody 10000000
echo Go
../xmtime.rb go build -o bin_go nbody.go : ./bin_go 10000000
