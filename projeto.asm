%include "asm_io.inc"
%include "seeds.asm"
%include "pokemons.asm"
%include "batalha.asm"
segment .data

; Aqui os dados inicializados s�o colocados 

pokeDisponiveis db "Pokemons disponíveis: ", 0 ; 
entrada2 db "Quantida do pagamento: ", 0 ; 
entrada3 db "Troco: ", 0 ;
parentesesAbre db " (", 0 ;
parentesesFecha db ")", 0 ;
barraVertical db "|", 0 ;
espacamento db " ", 0 ;
traco db " - ", 0 ;
jogador1 db "Jogador 1", 0
jogador2 db "Jogador 2", 0
selecionePoke dd ", selecione seu pokemon: ", 0
doisPontos db ":", 0
pokeNaoExiste db "Pokémon informado não existe! Tente novamente.", 0
lvl50 db " Lvl 50", 0
pokemonsSelecionados db "Pokémons selecionados:", 0
contador dd 0
contadorSeed dd 0

segment .bss
pokePlayer1 resd 1
pokePlayer2 resd 1



segment .text
	global _asm_main	

_asm_main:
	enter 	0,0
	pusha
    
    mov eax, pokeDisponiveis
    call print_string
    call print_nl
    
pokemons_disponiveis:
    mov eax, [contador]
    cmp eax, [quantPokemons]
    jge selecaoPoke1

    ; Imprimo o "id" do pokémon, adicionando um ao número, para os IDs variarem de 1 até o final do intervalo
    add eax, 1
    call print_int

    ; Imprime o traço que separa o id do nome
    mov eax, traco
    call print_string
    mov eax, [contador]

    ; Multiplica eax por 4 (tamanho de cada elemento no array)
    mov ebx, 4
    imul eax, ebx  
    mov ecx, eax
    mov eax, pokemons[ecx]  ; Carrega o endereço do array interno (pokemons)
    
    ; Imprime o nome do Pokémon
    mov eax, [eax]
    call print_string

    ; Imprime '('
    mov eax, parentesesAbre
    call print_string

    ; Imprime o valor tipo 1 do pokémon
    mov eax, pokemons[ecx]
    mov eax, [eax + 28]
    mov ebx, eax
    mov eax, [eax + 72]
    call print_string

    ; Vou para o segundo elemento e verifico se é igual ao primeiro, se for, pulo para impressão do parenteses
    mov eax, pokemons[ecx]
    mov eax, [eax + 32]
    cmp eax, ebx
    je printar_fechaParenteses
    mov eax, [eax + 72]

printar_barraV:
    mov ebx, eax            ; Movo o tipo do pokemon para o ebx, para salvar o conteudo
    mov eax, espacamento
    call print_string
    mov eax, barraVertical  
    call print_string       ; Imprimo a barra vertical
    mov eax, espacamento
    call print_string
    mov eax, ebx
    call print_string       ; Imprimo o segundo tipo do pokemon

; Imprimo o fechamento de parentedes
printar_fechaParenteses:
    mov eax, parentesesFecha
    call print_string

    ; Imprime uma nova linha
    call print_nl

    inc dword [contador]  ; Incrementa o contador
    jmp pokemons_disponiveis ; Chamo o loop

selecaoPoke1:
    ; Selecão do pokémon 1
    mov eax, jogador1
    call print_string
    mov eax, selecionePoke
    call print_string
    call read_int
    call print_nl

    cmp eax, [quantPokemons] ; Verifico se o número informado é maior que a quantidade de pokémon existentes
    jg naoExiste1 ; Se for maior que a quantidade existente, informo que não existe
    cmp eax, 0 ; Verifico se o número informado é menor ou igual que 0
    jle naoExiste1 ; Se for maior que 0, pulo para a seleção do segundo pokémon
    mov [pokePlayer1], eax ; Salvo o número do pokémon do jogador 1
    jmp selecaoPoke2

naoExiste1:
    ; Informo que o pokémon informado não existe e inicio a seleção novamente
    mov eax, pokeNaoExiste 
    call print_string
    call print_nl
    jmp selecaoPoke1

selecaoPoke2:
    ; Selecão do pokémon 2
    mov eax, jogador2
    call print_string
    mov eax, selecionePoke
    call print_string
    call read_int
    call print_nl

    cmp eax, [quantPokemons] ; Verifico se o número informado é maior que a quantidade de pokémon existentes
    jg naoExiste2 ; Se for maior que a quantidade existente, informo que não existe
    cmp eax, 0 ; Verifico se o número informado é menor ou igual que 0
    jle naoExiste2 ; Se for maior que 0, pulo para a seleção do segundo pokémon
    mov [pokePlayer2], eax ; Salvo o número do pokémon do jogador 1
    jmp carregarAtributosP1
    
naoExiste2:
    ; Informo que o pokémon informado não existe e inicio a seleção novamente
    mov eax, pokeNaoExiste 
    call print_string
    call print_nl
    jmp selecaoPoke2

carregarAtributosP1:
    mov eax, pokemonsSelecionados
    call print_string
    call print_nl
    mov eax, jogador1
    call print_string
    mov eax, doisPontos
    call print_string
    mov eax, espacamento
    call print_string
    ; Calculando a posição do pokémon 1 no array
    mov eax, [pokePlayer1]
    sub eax, 1
    mov ebx, 4
    imul ebx
    mov ecx, pokemons[eax] ; Acessando o pokémon escolhido
    mov eax, ecx[0]
    mov [name1], eax ; Atribuindo o nome 
    call print_string
    mov eax, lvl50
    call print_string
    call print_nl

    mov eax, hp
    call print_string
    mov eax, ecx[4] 
    mov [hp1], eax ; Atribuindo o hp
    mov [maxhp1], eax
    call print_int
    call print_nl

    mov eax, atk
    call print_string
    mov eax, ecx[8]
    mov [atk1], eax ; Atribuindo o ataque
    call print_int
    call print_nl

    mov eax, def
    call print_string
    mov eax, ecx[12]
    mov [def1], eax ; Atribuindo a defesa
    call print_int
    call print_nl
    
    mov eax, spatk
    call print_string
    mov eax, ecx[16]
    mov [spatk1], eax ; Atribuindo o ataque especial
    call print_int
    call print_nl
    
    mov eax, spdef
    call print_string
    mov eax, ecx[20]
    mov [spdef1], eax ; Atribuindo a defesa especial
    call print_int
    call print_nl

    mov eax, speed
    call print_string
    mov eax, ecx[24]
    mov [speed1], eax ; Atribuindo a velocidade
    call print_int
    call print_nl

    mov eax, ecx[28]
    mov [tipo11], eax ; Atribuindo o tipo 1
    mov eax, ecx[32]
    mov [tipo12], eax ; Atribuindo o tipo 2

    ; Atributos dos ataques
    mov ecx, ecx[36] ; Acessando o array de ataques do pokemon
    mov eax, ecx[0]
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx]
    mov [mov11name], eax ; Atribuindo o nome de ataque 1
    mov eax, atacksElements[ebx]
    mov [mov11elem], eax
    mov eax, categorys[ebx]
    mov [mov11cat], eax
    mov eax, powers[ebx]
    mov [mov11power], eax
    mov eax, accuracys[ebx]
    mov [mov11acc], eax
    
    mov eax, ecx[4]
    mov ebx, 4
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx]
    mov [mov12name], eax ; Atribuindo o nome de ataque 2
    mov eax, atacksElements[ebx]
    mov [mov12elem], eax
    mov eax, categorys[ebx]
    mov [mov12cat], eax
    mov eax, powers[ebx]
    mov [mov12power], eax
    mov eax, accuracys[ebx]
    mov [mov12acc], eax

    mov eax, ecx[8]
    mov ebx, 4
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx] 
    mov [mov13name], eax ; Atribuindo o nome de ataque 3
    mov eax, atacksElements[ebx]
    mov [mov13elem], eax
    mov eax, categorys[ebx]
    mov [mov13cat], eax
    mov eax, powers[ebx]
    mov [mov13power], eax
    mov eax, accuracys[ebx]
    mov [mov13acc], eax

    mov eax, ecx[12]
    mov ebx, 4
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx] 
    mov [mov14name], eax ; Atribuindo o nome de ataque 4
    mov eax, atacksElements[ebx]
    mov [mov14elem], eax
    mov eax, categorys[ebx]
    mov [mov14cat], eax
    mov eax, powers[ebx]
    mov [mov14power], eax
    mov eax, accuracys[ebx]
    mov [mov14acc], eax
    call print_nl

carregarAtributosP2:
    mov eax, jogador2
    call print_string
    mov eax, doisPontos
    call print_string
    mov eax, espacamento
    call print_string
    ; Calculando a posição do pokémon 1 no array
    mov eax, [pokePlayer2]
    sub eax, 1
    mov ebx, 4
    imul ebx
    mov ecx, pokemons[eax] ; Acessando o pokémon escolhido
    mov eax, ecx[0]
    mov [name2], eax ; Atribuindo o nome 
    call print_string
    mov eax, lvl50
    call print_string
    call print_nl

    mov eax, hp
    call print_string
    mov eax, ecx[4] 
    mov [hp2], eax ; Atribuindo o hp
    mov [maxhp2], eax
    call print_int
    call print_nl

    mov eax, atk
    call print_string
    mov eax, ecx[8]
    mov [atk2], eax ; Atribuindo o ataque
    call print_int
    call print_nl

    mov eax, def
    call print_string
    mov eax, ecx[12]
    mov [def2], eax ; Atribuindo a defesa
    call print_int
    call print_nl
    
    mov eax, spatk
    call print_string
    mov eax, ecx[16]
    mov [spatk2], eax ; Atribuindo o ataque especial
    call print_int
    call print_nl
    
    mov eax, spdef
    call print_string
    mov eax, ecx[20]
    mov [spdef2], eax ; Atribuindo a defesa especial
    call print_int
    call print_nl

    mov eax, speed
    call print_string
    mov eax, ecx[24]
    mov [speed2], eax ; Atribuindo a velocidade
    call print_int
    call print_nl

    mov eax, ecx[28]
    mov [tipo21], eax ; Atribuindo o tipo 1
    mov eax, ecx[32]
    mov [tipo22], eax ; Atribuindo o tipo 2

    ; Atributos dos ataques
    mov ecx, ecx[36] ; Acessando o array de ataques do pokemon
    mov eax, ecx[0]
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx]
    mov [mov21name], eax ; Atribuindo o nome de ataque 1
    mov eax, atacksElements[ebx]
    mov [mov21elem], eax
    mov eax, categorys[ebx]
    mov [mov21cat], eax
    mov eax, powers[ebx]
    mov [mov21power], eax
    mov eax, accuracys[ebx]
    mov [mov21acc], eax
    
    mov eax, ecx[4]
    mov ebx, 4
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx]
    mov [mov22name], eax ; Atribuindo o nome de ataque 2
    mov eax, atacksElements[ebx]
    mov [mov22elem], eax
    mov eax, categorys[ebx]
    mov [mov22cat], eax
    mov eax, powers[ebx]
    mov [mov22power], eax
    mov eax, accuracys[ebx]
    mov [mov22acc], eax

    mov eax, ecx[8]
    mov ebx, 4
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx] 
    mov [mov23name], eax ; Atribuindo o nome de ataque 3
    mov eax, atacksElements[ebx]
    mov [mov23elem], eax
    mov eax, categorys[ebx]
    mov [mov23cat], eax
    mov eax, powers[ebx]
    mov [mov23power], eax
    mov eax, accuracys[ebx]
    mov [mov23acc], eax

    mov eax, ecx[12]
    mov ebx, 4
    imul ebx ; Calculando o número de bytes
    mov ebx, eax
    mov eax, atacksNames[ebx] 
    mov [mov24name], eax ; Atribuindo o nome de ataque 4
    mov eax, atacksElements[ebx]
    mov [mov24elem], eax
    mov eax, categorys[ebx]
    mov [mov24cat], eax
    mov eax, powers[ebx]
    mov [mov24power], eax
    mov eax, accuracys[ebx]
    mov [mov24acc], eax
    call print_nl

setarSeed:
    mov eax, selecionarSemente ; Solicitando a seed desejada
    call print_string
    call read_int
    cmp eax, 0 ; Verificando se ela é maior que 0
    jle seedInvalida
    cmp eax, 100 ; Verificando se ela é maior que 100
    jg seedInvalida
    dec eax ; Decrementando um do valor da seed desejada, para calcular os bytes
    mov ebx, 4
    imul ebx
    mov eax, seeds[eax] ; Movendo o endereço da seed desejada para o eax
    mov [seedBattle], eax ; Salvando a seed desejada na váriavel seedBattle
    jmp checarMaisVeloz

seedInvalida:
    ; Faz o loop para quando a seed informada for inválida
    mov eax, sementeInvalida
    call print_string
    call print_nl
    jmp setarSeed

checarMaisVeloz:
    ; Verifica qual pokémon é mais veloz. O mais rápido ataca primeiro
    call print_nl
    mov eax, [speed1]
    cmp eax, [speed2]
    ; Apresentando o pokémon mais veloz com base no resultado
    jge poke1Veloz
    jmp poke2Veloz

poke1Veloz:
    ; Informo que o pokémon mais veloz é o do jogador 1
    mov eax, oPoke
    call print_string
    mov eax, name1[0]
    call print_string
    mov eax, maisVeloz
    call print_string
    call print_nl
    jmp player1

poke2Veloz:
    ; Informo que o pokémon mais veloz é o do jogador 2
    mov eax, oPoke
    call print_string
    mov eax, name2[0]
    call print_string
    mov eax, maisVeloz
    call print_string
    call print_nl
    jmp player2

player1:
    call print_nl
    ; Imprimindo o nome do pokémon e o nível
    mov eax, name1[0] 
    call print_string
    mov eax, lvl50
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string

    mov eax, 0
    mov [contador], eax

imprimeHP1:
    ; Loop que imprime o HP do pokémon 1
    mov eax, [contador]
    cmp eax, [maxhp1]
    jge imprimeAtks1
    cmp eax, [hp1]
    jge imprimeVazio
    mov eax, barraVertical
    call print_string
    inc dword [contador]
    jmp imprimeHP1
imprimeVazio:
    mov eax, espacamento
    call print_string
    inc dword [contador]
    jmp imprimeHP1


imprimeAtks1:
    mov eax, parentesesFecha
    call print_string
    call print_nl
    mov eax, [hp1]
    cmp eax, 0
    jle vitoria2
    ; Imprimindo o ataque 1 e suas características principais do pokemon 1
    mov eax, 1
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov11name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov11power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov11acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov11elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

    ; Imprimindo o ataque 2 e suas características principais do pokemon 1
    mov eax, 2
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov12name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov12power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov12acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov12elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

    ; Imprimindo o ataque 3 e suas características principais do pokemon 1
    mov eax, 3
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov13name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov13power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov13acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov13elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

    ; Imprimindo o ataque 4 e suas características principais do pokemon 1
    mov eax, 4
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov14name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov14power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov14acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov14elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

selecionarAtk1:
    ; Verifico se o id do ataque está dentro do intervalo de 1 a 4
    mov eax, ataqueDesejado
    call print_string
    call read_int
    cmp eax, 0
    jle atkInvalido1
    cmp eax, 4
    jg atkInvalido1
    jmp calcularDesvio1

atkInvalido1:
    ; Loop para quando o ataque desejado estiver fora do intervalo permitido
    mov eax, ataqueInvalido
    call print_string
    call print_nl
    jmp selecionarAtk1

calcularDesvio1:
    mov [atkSelected], eax ; Salvando o ataque informado pelo usuário
    mov eax, [contadorSeed]
    mov ebx, [seedBattle]
    mov eax, ebx[eax]
    add dword [seedBattle], 4
    cmp eax, 90
    jle setAtk11
    mov eax, 1
    mov [desvia], eax
    jmp setAtk11

setAtk11:
    ; Verifico se o ataque 1 é o desejado, se for, atribuo as informações do ataque para as váriaveis do ataque atual
    mov eax, [atkSelected] ; Retornando o ataque selecionando para o eax
    cmp eax, 1
    jne setAtk12
    mov eax, [mov11power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax ; Armazeno o poder de ataque
    mov eax, [mov11acc]
    mov [atkAcc], eax ; Armazeno a acurácia
    mov eax, [mov11cat]
    mov [atkCat], eax ; Armazeno a categoria
    mov eax, [mov11elem]
    mov [atkElem], eax ; Armazeno o elemento do ataque
    mov eax, [mov11name]
    mov [atkName], eax
    jmp verificarAcc1

setAtk12:
    cmp eax, 2
    jne setAtk13
    mov eax, [mov12power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax
    mov eax, [mov12acc]
    mov [atkAcc], eax
    mov eax, [mov12cat]
    mov [atkCat], eax
    mov eax, [mov12elem]
    mov [atkElem], eax
    mov eax, [mov12name]
    mov [atkName], eax
    jmp verificarAcc1

setAtk13:
    cmp eax, 3
    jne setAtk14
    mov eax, [mov13power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax
    mov eax, [mov13acc]
    mov [atkAcc], eax
    mov eax, [mov13cat]
    mov [atkCat], eax
    mov eax, [mov13elem]
    mov [atkElem], eax
    mov eax, [mov13name]
    mov [atkName], eax
    jmp verificarAcc1

setAtk14:
    mov eax, [mov14power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax
    mov eax, [mov14acc]
    mov [atkAcc], eax
    mov eax, [mov14cat]
    mov [atkCat], eax
    mov eax, [mov14elem]
    mov [atkElem], eax
    mov eax, [mov14name]
    mov [atkName], eax
    jmp verificarAcc1

verificarAcc1:
    mov eax, [desvia] ; Verifico se o o pokémon desviou, se sim, pulo para a impressão das mensagens
    cmp eax, 1
    je mensagens1
    mov eax, [contadorSeed] ; Se não, calculo se o pokémon acertou o ataque
    mov ebx, [seedBattle]
    mov eax, ebx[eax]
    add dword [seedBattle], 4
    cmp eax, [atkAcc]
    jle verificaCatAtk1 ; Se o pokémon desviou, pulo para as mensagens
    mov eax, 0
    mov [acerto], eax
    jmp mensagens1

verificaCatAtk1: 
    ; Verifico a categoria do ataque, para realizar o ataque com os atributos corretos (especial ou físico)
    mov eax, [atkCat]
    cmp eax, 0
    je calcularAtkFisico1
    jmp calcularAtkEspecial1

    ; Fórmula para obter o ataque: (atk-atacante * 10 / def-defensor) * poder do ataque * 10
calcularAtkFisico1:
    mov eax, [atk1]
    mov ebx, 10
    imul ebx
    mov ebx, [def2]
    idiv ebx
    xor edx, edx
    mov ebx, [atkPower]
    imul ebx
    mov [atualDmg], eax
    jmp multiplicadorTipo1

calcularAtkEspecial1:
    mov eax, [spatk1]
    mov ebx, 10
    imul ebx
    mov ebx, [spdef2]
    idiv ebx
    xor edx, edx
    mov ebx, [atkPower]
    imul ebx
    mov [atualDmg], eax 
    jmp multiplicadorTipo1

multiplicadorTipo1:
    mov eax, [tipo21]
    mov eax, eax[76]
    mov ebx, 4
    imul ebx
    mov [idTipo1], eax

    mov eax, [tipo22]
    mov eax, eax[76]
    mov ebx, 4
    imul ebx
    mov [idTipo2], eax
    
    mov eax, [idTipo1]
    mov ebx, [atkElem]
    mov ebx, ebx[eax]
    mov [mult1], ebx

    mov eax, [idTipo2]
    mov ebx, [atkElem]
    mov ebx, ebx[eax]
    mov [mult2], ebx

    mov eax, [mult1]
    mov [multiplicador], eax

    mov eax, [mult2]
    cmp eax, 10
    je calcularMultiplicador1
    mov eax, [idTipo1]
    mov ebx, [idTipo2]
    cmp eax, ebx
    je calcularMultiplicador1
    mov eax, [mult1]
    add eax, [mult2]
    mov [multiplicador], eax
    jmp calcularMultiplicador1

calcularMultiplicador1:
    mov ebx, [multiplicador]
    mov eax, [atualDmg]
    imul ebx
    mov ebx, 10
    idiv ebx
    xor edx, edx
    mov [atualDmg], eax

calcularCritico1:
    mov eax, 0
    mov [critical], eax
    mov eax, [contadorSeed]
    mov ebx, [seedBattle]
    mov eax, ebx[eax]
    cmp eax, 90
    jle calcularPoder1
    mov eax, [atualDmg]
    mov ebx, 2
    imul ebx
    mov [atualDmg], eax
    mov eax, 1
    mov [critical], eax
    jle calcularPoder1

calcularPoder1:
    add dword [contadorSeed], 4
    mov eax, [atualDmg]
    mov ebx, 10 ; Normalizando a multiplicação feita anteiormente pelo ataque do atacante
    idiv ebx
    xor edx, edx
    mov ebx, 50 ; Quanto maior, menor o ataque
    idiv ebx
    mov [atualDmg], eax
    jmp atacar1

atacar1:
    mov eax, [hp2]
    sub eax, [atualDmg]
    mov [hp2], eax

mensagens1:
    ; Mensagem informando o ataque utilizado
    mov eax, name1[0]
    call print_string
    mov eax, utilizaAtaque
    call print_string
    mov eax, atkName[0]
    call print_string
    call print_nl

    mov eax, [desvia]
    cmp eax, 1
    je esquivou1

    mov eax, [acerto]
    cmp eax, 0
    je errou1

    mov eax, [multiplicador]
    cmp eax, 10
    jl mensagemIneficaz1 
    jg mensagemSuperEficaz1
    jmp mensagemCritico1

mensagemIneficaz1:
    mov eax, ineficaz
    call print_string
    call print_nl
    jmp mensagemCritico1

mensagemSuperEficaz1:
    mov eax, superEficaz
    call print_string
    call print_nl
    jmp mensagemCritico1

mensagemCritico1:
    mov eax, [critical]
    cmp eax, 1
    jne player2
    mov eax, critico
    call print_string
    call print_nl
    mov eax, 0
    mov [critical], eax
    jmp player2

esquivou1:
    mov eax, name2[0]
    call print_string
    mov eax, desviou
    call print_string
    call print_nl
    mov eax, 0
    mov [desvia], eax
    jmp player2

errou1:
    mov eax, name1[0]
    call print_string
    mov eax, errou
    call print_string
    call print_nl
    mov eax, 1
    mov [acerto], eax
    jmp player2


player2:
; Imprimindo o nome do pokémon e o nível
    call print_nl
    mov eax, name2[0] 
    call print_string
    mov eax, lvl50
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string

    mov eax, 0
    mov [contador], eax

imprimeHP2:
    ; Loop que imprime o HP do pokémon 2
    mov eax, [contador]
    cmp eax, [maxhp2]
    jge imprimeAtks2
    cmp eax, [hp2]
    jge imprimeVazio2
    mov eax, barraVertical
    call print_string
    inc dword [contador]
    jmp imprimeHP2
imprimeVazio2:
    mov eax, espacamento
    call print_string
    inc dword [contador]
    jmp imprimeHP2

imprimeAtks2:
    mov eax, parentesesFecha
    call print_string
    call print_nl
    mov eax, [hp2]
    cmp eax, 0
    jle vitoria1
    ; Imprimindo o ataque 1 e suas características principais do pokemon 1
    mov eax, 1
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov21name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov21power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov21acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov21elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

    ; Imprimindo o ataque 2 e suas características principais do pokemon 2
    mov eax, 2
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov22name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov22power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov22acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov22elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

    ; Imprimindo o ataque 3 e suas características principais do pokemon 2
    mov eax, 3
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov23name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov23power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov23acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov23elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

    ; Imprimindo o ataque 4 e suas características principais do pokemon 2
    mov eax, 4
    call print_int
    mov eax, traco
    call print_string
    mov eax, [mov24name]
    call print_string
    mov eax, espacamento
    call print_string
    mov eax, parentesesAbre
    call print_string
    mov eax, power
    call print_string
    mov eax, [mov24power]
    call print_int
    mov eax, acc
    call print_string
    mov eax, [mov24acc]
    call print_int
    mov eax, atkType
    call print_string
    mov eax, [mov24elem]
    mov eax, eax[72]
    call print_string
    mov eax, parentesesFecha
    call print_string
    call print_nl

selecionarAtk2:
    ; Verifico se o id do ataque está dentro do intervalo de 1 a 4
    mov eax, ataqueDesejado
    call print_string
    call read_int
    cmp eax, 0
    jle atkInvalido2
    cmp eax, 4
    jg atkInvalido2
    jmp calcularDesvio2

atkInvalido2:
    ; Loop para quando o ataque desejado estiver fora do intervalo permitido
    mov eax, ataqueInvalido
    call print_string
    call print_nl
    jmp selecionarAtk2

calcularDesvio2:
    mov [atkSelected], eax ; Salvando o ataque informado pelo usuário
    mov eax, [contadorSeed]
    mov ebx, [seedBattle]
    mov eax, ebx[eax]
    add dword [seedBattle], 4
    cmp eax, 90
    jle setAtk21
    mov eax, 1
    mov [desvia], eax
    jmp setAtk21

setAtk21:
    ; Verifico se o ataque 1 é o desejado, se for, atribuo as informações do ataque para as váriaveis do ataque atual
    mov eax, [atkSelected] ; Retornando o ataque selecionando para o eax
    cmp eax, 1
    jne setAtk22
    mov eax, [mov21power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax ; Armazeno o poder de ataque
    mov eax, [mov21acc]
    mov [atkAcc], eax ; Armazeno a acurácia
    mov eax, [mov21cat]
    mov [atkCat], eax ; Armazeno a categoria
    mov eax, [mov21elem]
    mov [atkElem], eax ; Armazeno o elemento do ataque
    mov eax, [mov21name]
    mov [atkName], eax
    jmp verificarAcc2

setAtk22:
    cmp eax, 2
    jne setAtk23
    mov eax, [mov22power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax
    mov eax, [mov22acc]
    mov [atkAcc], eax
    mov eax, [mov22cat]
    mov [atkCat], eax
    mov eax, [mov22elem]
    mov [atkElem], eax
    mov eax, [mov22name]
    mov [atkName], eax
    jmp verificarAcc2

setAtk23:
    cmp eax, 3
    jne setAtk24
    mov eax, [mov23power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax
    mov eax, [mov23acc]
    mov [atkAcc], eax
    mov eax, [mov23cat]
    mov [atkCat], eax
    mov eax, [mov23elem]
    mov [atkElem], eax
    mov eax, [mov23name]
    mov [atkName], eax
    jmp verificarAcc2

setAtk24:
    mov eax, [mov24power]
    mov ebx, 10
    imul ebx
    mov [atkPower], eax
    mov eax, [mov24acc]
    mov [atkAcc], eax
    mov eax, [mov24cat]
    mov [atkCat], eax
    mov eax, [mov24elem]
    mov [atkElem], eax
    mov eax, [mov24name]
    mov [atkName], eax
    jmp verificarAcc2

verificarAcc2:
    mov eax, [desvia] ; Verifico se o o pokémon desviou, se sim, pulo para a impressão das mensagens
    cmp eax, 1
    je mensagens2
    mov eax, [contadorSeed] ; Se não, calculo se o pokémon acertou o ataque
    mov ebx, [seedBattle]
    mov eax, ebx[eax]
    add dword [seedBattle], 4
    cmp eax, [atkAcc]
    jle verificaCatAtk2 ; Se o pokémon desviou, pulo para as mensagens
    mov eax, 0
    mov [acerto], eax
    jmp mensagens2

verificaCatAtk2: 
    ; Verifico a categoria do ataque, para realizar o ataque com os atributos corretos (especial ou físico)
    mov eax, [atkCat]
    cmp eax, 0
    je calcularAtkFisico2
    jmp calcularAtkEspecial2

    ; Fórmula para obter o ataque: (atk-atacante * 10 / def-defensor) * poder do ataque * 10
calcularAtkFisico2:
    mov eax, [atk2]
    mov ebx, 10
    imul ebx
    mov ebx, [def1]
    idiv ebx
    xor edx, edx
    mov ebx, [atkPower]
    imul ebx
    mov [atualDmg], eax
    jmp multiplicadorTipo2

calcularAtkEspecial2:
    mov eax, [spatk2]
    mov ebx, 10
    imul ebx
    mov ebx, [spdef1]
    idiv ebx
    xor edx, edx
    mov ebx, [atkPower]
    imul ebx
    mov [atualDmg], eax 

    jmp multiplicadorTipo2

multiplicadorTipo2:
    mov eax, [tipo11]
    mov eax, eax[76]
    mov ebx, 4
    imul ebx
    mov [idTipo1], eax

    mov eax, [tipo12]
    mov eax, eax[76]
    mov ebx, 4
    imul ebx
    mov [idTipo2], eax
    
    mov eax, [idTipo1]
    mov ebx, [atkElem]
    mov ebx, ebx[eax]
    mov [mult1], ebx

    mov eax, [idTipo2]
    mov ebx, [atkElem]
    mov ebx, ebx[eax]
    mov [mult2], ebx

    mov eax, [mult1]
    mov [multiplicador], eax

    mov eax, [mult2]
    cmp eax, 10
    je calcularMultiplicador2
    mov eax, [idTipo1]
    mov ebx, [idTipo2]
    cmp eax, ebx
    je calcularMultiplicador2
    mov eax, [mult1]
    add eax, [mult2]
    mov [multiplicador], eax
    jmp calcularMultiplicador2

calcularMultiplicador2:
    mov ebx, [multiplicador]
    mov eax, [atualDmg]
    imul ebx
    mov ebx, 10
    idiv ebx
    xor edx, edx
    mov [atualDmg], eax

calcularCritico2:
    mov eax, 0
    mov [critical], eax
    mov eax, [contadorSeed]
    mov ebx, [seedBattle]
    mov eax, ebx[eax]
    add dword [contadorSeed], 4
    cmp eax, 90
    jle calcularPoder2
    mov eax, [atualDmg]
    mov ebx, 2
    imul ebx
    mov [atualDmg], eax
    mov eax, 1
    mov [critical], eax
    jle calcularPoder2

calcularPoder2:
    mov eax, [atualDmg]
    mov ebx, 10 ; Normalizando a multiplicação feita anteiormente pelo ataque do atacante
    idiv ebx
    xor edx, edx
    mov ebx, 50 ; Quanto maior, menor o ataque
    idiv ebx
    mov [atualDmg], eax
    jmp atacar2

atacar2:
    mov eax, [hp1]
    sub eax, [atualDmg]
    mov [hp1], eax

mensagens2:
    ; Mensagem informando o ataque utilizado
    mov eax, name2[0]
    call print_string
    mov eax, utilizaAtaque
    call print_string
    mov eax, atkName[0]
    call print_string
    call print_nl

    mov eax, [desvia]
    cmp eax, 1
    je esquivou2

    mov eax, [acerto]
    cmp eax, 0
    je errou2

    mov eax, [multiplicador]
    cmp eax, 20
    jl mensagemIneficaz2
    jg mensagemSuperEficaz2
    jmp mensagemCritico2

mensagemIneficaz2:
    mov eax, ineficaz
    call print_string
    call print_nl
    jmp mensagemCritico2

mensagemSuperEficaz2:
    mov eax, superEficaz
    call print_string
    call print_nl
    jmp mensagemCritico2

mensagemCritico2:
    mov eax, [critical]
    cmp eax, 1
    jne player1
    mov eax, critico
    call print_string
    call print_nl
    mov eax, 0
    mov [critical], eax
    jmp player1

esquivou2:
    mov eax, name1[0]
    call print_string
    mov eax, desviou
    call print_string
    call print_nl
    mov eax, 0
    mov [desvia], eax
    jmp player1

errou2:
    mov eax, name2[0]
    call print_string
    mov eax, errou
    call print_string
    call print_nl
    mov eax, 1
    mov [acerto], eax
    jmp player1


vitoria1:
    call print_nl
    mov eax, name2[0]
    call print_string
    mov eax, derrotado
    call print_string
    call print_nl
    mov eax, win1
    call print_string
    jmp fim

vitoria2:
    call print_nl
    mov eax, name1[0]
    call print_string
    mov eax, derrotado
    call print_string
    call print_nl
    mov eax, win2
    call print_string
    jmp fim

fim:
    call print_nl

; N�o modifique o c�digo ap�s este coment�rio
	popa
	mov	eax, 0
	leave
	ret