readonly NUM=5000000
echo Crystal
../xmptime.rb crystal build threadring.cr --release -o bin_cr : ./bin_cr $NUM
echo Go
../xmptime.rb go build -o bin_go threadring.go : ./bin_go $NUM
