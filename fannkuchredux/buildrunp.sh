echo Crystal
../xmptime.rb crystal build fannkuchredux.cr --release -o bin_cr : ./bin_cr 11
echo C
../xmptime.rb gcc -O3 -fomit-frame-pointer -funroll-loops fannkuchredux.c -o bin_c : ./bin_c 11
echo Java
../xmptime.rb javac fannkuchredux.java : java fannkuchredux 11
echo Go
../xmptime.rb go build -o bin_go fannkuchredux.go : ./bin_go 11
