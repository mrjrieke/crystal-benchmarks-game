if [ ! -f 1.txt ]; then
	sh generate.sh
fi

echo Crystal
cat 1.txt | ../xmtime.rb crystal build regexdna.cr --release -o bin_cr : ./bin_cr
echo C
cat 1.txt | ../xmtime.rb gcc -O3 -fomit-frame-pointer -o bin_c regexdna.c -lpcre : ./bin_c
#echo Ruby
#cat 1.txt | ../xmtime.rb ruby regexdna.rb
echo Java
cat 1.txt | ../xmtime.rb javac regexredux.java : java regexredux
echo Go
cat 1.txt | ../xmtime.rb go build -o bin_go regexredux.go : ./bin_go

