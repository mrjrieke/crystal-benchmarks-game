gcc -O3 -fomit-frame-pointer -funroll-loops meteor.c -o bin_c
crystal build meteor.cr --release -o bin_cr
echo Crystal
../xmptime.rb ./bin_cr
echo C
../xmptime.rb ./bin_c
