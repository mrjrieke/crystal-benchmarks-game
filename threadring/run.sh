readonly NUM=5000000
echo Crystal
../xtime.rb ./bin_cr $NUM
echo Go
../xtime.rb ./bin_go $NUM
#echo Ruby
#../xtime.rb ruby threadring.rb $NUM
#echo Erlang
#../xtime.rb erl -noshell -run threadring main $NUM
#echo Scala
#../xtime.rb scala threadring $NUM
#echo Goby
#../xtime.rb goby threadring.gb $NUM
