# Install

```
sudo apt install gcc-riscv64-linux-gnu
sudo apt install qemu-user
```

# Run

```
cd asm
riscv64-linux-gnu-as hello.s -o hello.o
riscv64-linux-gnu-gcc hello.o -o hello -nostdlib -static
qemu-riscv64 ./hello
echo $?
```

# Reference

[You Can Learn RISC-V Assembly in 15 Minutes](https://www.youtube.com/watch?v=GWiAQs4-UQ0)
