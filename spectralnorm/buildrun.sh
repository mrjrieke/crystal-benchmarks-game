go build -o bin_go spectralnorm.go
echo Crystal
../xmtime.rb crystal build spectralnorm.cr --release -o bin_cr : ./bin_cr 5000
echo C
../xmtime.rb gcc -O3 -fomit-frame-pointer -funroll-loops spectralnorm.c -o bin_c -lm : ./bin_c 5000
#echo Ruby
#../xmtime.rb ruby spectralnorm.rb 5000
echo Java
../xmtime.rb javac spectralnorm.java : java spectralnorm 5000
echo Go
../xmtime.rb go build -o bin_go spectralnorm.go : ./bin_go 5000

