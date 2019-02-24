readonly NUM=5000000
echo Crystal
../xmtime.rb crystal build threadring.cr --release -o bin_cr : ./bin_cr $NUM
echo Go
../xmtime.rb go build -o bin_go threadring.go : ./bin_go $NUM
