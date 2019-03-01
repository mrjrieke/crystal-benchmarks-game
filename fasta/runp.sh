echo Crystal
../xmptime.rb ./bin_cr 15000000 > /dev/null
echo C
../xmptime.rb ./bin_c 15000000 > /dev/null
echo Go
../xmptime.rb ./bin_go 15000000 > /dev/null
echo Java
../xmptime.rb java fasta 15000000 > /dev/null
