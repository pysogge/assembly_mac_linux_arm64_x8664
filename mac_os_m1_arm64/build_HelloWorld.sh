as -o ./exec/HelloWorld.o HelloWorld.s -arch arm64
ld -o ./exec/HelloWorld.out ./exec/HelloWorld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 
./exec/HelloWorld.out
