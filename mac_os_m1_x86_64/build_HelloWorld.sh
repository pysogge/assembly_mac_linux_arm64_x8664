as -o ./exec/HelloWorld.o HelloWorld.s -arch x86_64
ld ./exec/HelloWorld.o -e _main -lc -o ./exec/HelloWorld.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./exec/HelloWorld.out