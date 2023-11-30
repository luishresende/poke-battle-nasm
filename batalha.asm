segment .data
hp db "HP: ", 0
atk db "Atk: ", 0
def db "Def: ", 0
spatk db "Sp. Atk: ", 0
spdef db "Sp. Def: ", 0
speed db "Speed: ", 0
tipos db "Tipos: ", 0
power db "PWR: ", 0
acc db ", ACC: ", 0
atkType db ", TYP: ", 0
cat db ", CAT: ", 0
oPoke db "O Pokémon ", 0
maisVeloz db " é maiz veloz! Ele(a) inicia o ataque!", 0
selecionarSemente db "Selecione um número de 1 a 100 (seed da batalha): ", 0
sementeInvalida db "A semente informada não é valida! Tente novamente.", 0
ataqueDesejado db "Selecione o ataque desejado: ", 0
ataqueInvalido db "O ataque informado não é válido! Tente novamente.", 0
utilizaAtaque db " utiliza o ataque ", 0
superEficaz db "O ataque é super eficaz!", 0
ineficaz db "O ataque não é tão eficaz!", 0
critico db "Ataque crítico!", 0
win1 db "O jogador 1 demonstrou ser um mestre pokémon e venceu a batalha!", 0
win2 db "O jogador 2 demonstrou ser um mestre pokémon e venceu a batalha!", 0
desviou db " desvia do ataque!", 0
errou db " erra o ataque!", 0
derrotado db " é derrotado!", 0
critical dd 0
desvia dd 0
acerto dd 1
; Váriaveis da batalha
segment .bss

seedBattle resd 1
; Poke 1
name1 resd 1
maxhp1 resd 1
hp1 resd 1
atk1 resd 1
spatk1 resd 1
def1 resd 1
spdef1 resd 1
speed1 resd 1
tipo11 resd 1
tipo12 resd 1
; Movimentos
mov11name resd 1
mov11power resd 1
mov11acc resd 1
mov11cat resd 1
mov11elem resd 1

mov12name resd 1
mov12power resd 1
mov12acc resd 1
mov12cat resd 1
mov12elem resd 1

mov13name resd 1
mov13power resd 1
mov13acc resd 1
mov13cat resd 1
mov13elem resd 1

mov14name resd 1
mov14power resd 1
mov14acc resd 1
mov14cat resd 1
mov14elem resd 1

; Poke 2
name2 resd 1
maxhp2 resd 1
hp2 resd 1
atk2 resd 1
spatk2 resd 1
def2 resd 1
spdef2 resd 1
speed2 resd 1
tipo21 resd 1
tipo22 resd 1
; Movimentos
mov21name resd 1
mov21power resd 1
mov21acc resd 1
mov21cat resd 1
mov21elem resd 1

mov22name resd 1
mov22power resd 1
mov22acc resd 1
mov22cat resd 1
mov22elem resd 1

mov23name resd 1
mov23power resd 1
mov23acc resd 1
mov23cat resd 1
mov23elem resd 1

mov24name resd 1
mov24power resd 1
mov24acc resd 1
mov24cat resd 1
mov24elem resd 1

atkSelected resd 1
atkName resd 1
atkPower resd 1
atkAcc resd 1
atkCat resd 1
atkElem resd 1
atualDmg resd 1
multiplicador resd 1
idTipo1 resd 1
idTipo2 resd 1
mult1 resd 1
mult2 resd 1