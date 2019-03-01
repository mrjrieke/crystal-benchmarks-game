readonly NUM=5000000
echo Crystal
../xmptime.rb ./bin_cr $NUM
echo Go
../xmptime.rb ./bin_go $NUM
