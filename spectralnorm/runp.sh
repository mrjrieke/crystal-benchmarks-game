go build -o bin_go spectralnorm.go
echo Crystal
../xmptime.rb ./bin_cr 5000
echo C
../xmptime.rb ./bin_c 5000
#echo Ruby
#../xmptime.rb ruby spectralnorm.rb 5000
echo Java
../xmptime.rb java spectralnorm 5000
echo Go
../xmptime.rb ./bin_go 5000

