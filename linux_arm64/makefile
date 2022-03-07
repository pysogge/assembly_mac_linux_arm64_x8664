./exec/HelloWorld.out: HelloWorld.o
	ld -o ./exec/HelloWorld.out ./exec/HelloWorld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 

./exec/HelloWorld.o: HelloWorld.s
	as -o ./exec/HelloWorld.o HelloWorld.s -arch arm64