echo Crystal
../xmptime.rb crystal build binarytrees.cr --release -o bin_cr : ./bin_cr 18
echo C
../xmptime.rb gcc -O3 -fomit-frame-pointer -funroll-loops binarytrees.c -o bin_c -lm : ./bin_c 18
echo C++
../xmptime.rb g++ -fomit-frame-pointer -funroll-loops -std=c++11 binarytrees.cpp -O3 -o bin_cpp : ./bin_cpp 18
#echo Ruby
#../xmptime.rb ruby binarytrees.rb 18
echo Java
../xmptime.rb javac binarytrees.java : java binarytrees 18
echo Go
../xmptime.rb go build -o bin_go binarytrees.go : ./bin_go 18
