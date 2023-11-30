# poke-battle-nasm
Simulador de batalha de pokémon feito em NASM.

Comandos para compilar:
nasm -f win32 projeto.asm<br>
nasm -f win32 asm_io.asm<br>
gcc -c -o driver.obj driver.c<br>
gcc -o Projeto driver.obj projeto.obj asm_io.obj<br>
./Adicao.exe<br><br>

Ou você pode simplesmente utilizar o executável disponibilizado.
