as -o ./exec/HelloWorld.o HelloWorld.s -arch arm64
ld -o ./exec/HelloWorld.out ./exec/HelloWorld.o -arch arm64 
./exec/HelloWorld.out
