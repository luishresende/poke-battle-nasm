# poke-battle-nasm
Simulador de batalha de pokémon feito em NASM.

Comandos para compilar:
nasm -f win32 projeto.asm
nasm -f win32 asm_io.asm
gcc -c -o driver.obj driver.c
gcc -o Projeto driver.obj projeto.obj asm_io.obj
./Adicao.exe

Ou você pode simplesmente utilizar o executável disponibilizado.
