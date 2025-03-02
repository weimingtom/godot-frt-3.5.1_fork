# godot-frt-3.5.1_fork
Try to cross compile Godot 3.5.1 FRT 2.1.0 GLES no X11 version

## (WIP) How to build for PC xubuntu 20.04  
* sudo apt install scons  
* scons platform=frt tools=no target=release -c  
* scons platform=frt tools=no target=release -j8  

## (WIP) How to build for Trimui Smart Pro
* sudo apt install scons
* modify cross_compile.sh  
* . ./cross_compile.sh -c  
* . ./cross_compile.sh -j8  

## Bugs  
* Pong is not full screen  

## TODO  
* Port pong from SFML
* Build with Makefile
* Port visual novel games
* Make output binary elf smaller  
