# Assembly Hello World

Running on Apple M1, 2020; O.S. version 12.1

## To Start (on a Mac M1)
```
cd mac_os_m1_arm64
sh build_HelloWorld.sh

[or]

cd mac_os_m1_x86_64/
sh build_HelloWorld.sh
```


## Compile on Mac OS M1 as x86_64
```
as -o ./exec/HelloWorld.o HelloWorld.s -arch x86_64
ld ./exec/HelloWorld.o -e _main -lc -o ./exec/HelloWorld.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./exec/HelloWorld.out
```

## Build On Mac OS M1 as ARM64
```
as -o ./exec/HelloWorld.o HelloWorld.s -arch arm64
ld -o ./exec/HelloWorld.out ./exec/HelloWorld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 
./exec/HelloWorld.out
```

## Build On Linux ARM64
```
as -o ./exec/HelloWorld.o HelloWorld.s -arch arm64
ld -o ./exec/HelloWorld.out ./exec/HelloWorld.o -arch arm64 
./exec/HelloWorld.out
```

Show last return code:
```
echo $?
```

### Ref
To pull assembly code from a compiled c file:
```
otool -tv hello_world.out
```

### Setup 

#### Install NASM on Mac
```bash
brew install nasm
```