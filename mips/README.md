# Install

```
sudo apt install gcc-mips-linux-gnu
sudo apt install qemu-user
```

# Run

```
cd asm
mips-linux-gnu-as hello.s -o hello.o
mips-linux-gnu-gcc hello.o -o hello -nostdlib -static
qemu-mips ./hello
echo $?
```

# Reference

[You Can Learn MIPS Assembly in 15 Minutes](https://www.youtube.com/watch?v=5AN4Fo0GiBI)
