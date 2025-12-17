# Install

```
sudo apt install libc6-dev-i386
```

# Run

```
cd asm
as hello.s --32 -o hello.o
gcc -o hello.elf -m32 hello.o -nostdlib
./hello.elf
echo $?
```

# Reference

[You Can Learn Assembly in 10 Minutes](https://www.youtube.com/watch?v=jPDiaZS-2ok)
