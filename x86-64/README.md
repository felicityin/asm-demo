# Install

```
sudo apt install gcc
```

# Run

```
cd asm
as hello.s -o hello.o
gcc -o hello hello.o -nostdlib -static
./hello
echo $?
```

# Reference

[You Can Learn Assembly in 10 Minutes](https://www.youtube.com/watch?v=6S5KRJv-7RU&t=117s)
