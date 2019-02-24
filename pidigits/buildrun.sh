#echo Crystal
#../xmtime.rb crystal build pidigits.cr --release -o bin_cr : ./bin_cr 10000 > /dev/null
echo C
../xmtime.rb gcc -O3 -fomit-frame-pointer -funroll-loops pidigits.c -o bin_c -lgmp : ./bin_c 10000 > /dev/null
echo Java
../xmtime.rb javac pidigits.java : java pidigits 10000 > /dev/null
echo Go
../xmtime.rb go build -o bin_go pidigits.go : ./bin_go 10000 > /dev/null

