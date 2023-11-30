%include "ataques.asm"

segment .data
quantPokemons dd 74
nameVenusaur db "Venusaur", 0
nameCharizard db "Charizard", 0
nameBlastoise db "Blastoise", 0
nameButterfree db "Butterfree", 0
nameBeedrill db "Beedrill", 0
namePidgeot db "Pidgeot", 0
nameRaticate db "Raticate", 0
nameFearow db "Fearow", 0
nameArbok db "Arbok", 0
nameRaichu db "Raichu", 0
nameSandslash db "Sandslash", 0
nameNidoqueen db "Nidoqueen", 0
nameNidoking db "Nidoking", 0
nameClefable db "Clefable", 0
nameNinetales db "Ninetales", 0
nameWigglytuff db "Wigglytuff", 0
nameGolbat db "Golbat", 0
nameVileplume db "Vileplume", 0
nameParasect db "Parasect", 0
nameVenomoth db "Venomoth", 0
nameDugtrio db "Dugtrio", 0
namePersian db "Persian", 0
nameGolduck db "Golduck", 0
namePrimeape db "Primeape", 0
nameArcanine db "Arcanine", 0
namePoliwrath db "Poliwrath", 0
nameAlakazam db "Alakazam", 0
nameMachamp db "Machamp", 0
nameVictreebel db "Victreebel", 0
nameTentacruel db "Tentacruel", 0
nameGolem db "Golem", 0
nameRapidash db "Rapidash", 0
nameSlowbro db "Slowbro", 0
nameMagneton db "Magneton", 0
nameFarfetchd db "Farfetch'd", 0
nameDodrio db "Dodrio", 0
nameDewgong db "Dewgong", 0
nameMuk db "Muk", 0
nameCloyster db "Cloyster", 0
nameGengar db "Gengar", 0
nameOnix db "Onix", 0
nameHypno db "Hypno", 0
nameKingler db "Kingler", 0
nameElectrode db "Electrode", 0
nameExeggutor db "Exeggutor", 0
nameMarowak db "Marowak", 0
nameHitmonlee db "Hitmonlee", 0
nameHitmonchan db "Hitmonchan", 0
nameLickitung db "Lickitung", 0
nameWeezing db "Weezing", 0
nameRhyhorn db "Rhyhorn", 0
nameRhydon db "Rhydon", 0
nameKangaskhan db "Kangaskhan", 0
nameSeadra db "Seadra", 0
nameSeaking db "Seaking", 0
nameStarmie db "Starmie", 0
nameMrmime db "Mr. Mime", 0
nameScyther db "Scyther", 0
nameJynx db "Jynx", 0
nameElectabuzz db "Electabuzz", 0
nameMagmar db "Magmar", 0
namePinsir db "Pinsir", 0
nameTauros db "Tauros", 0
nameGyarados db "Gyarados", 0
nameLapras db "Lapras", 0
nameEevee db "Eevee", 0
nameVaporeon db "Vaporeon", 0
nameJolteon db "Jolteon", 0
nameFlareon db "Flareon", 0
nameOmastar db "Omastar", 0
nameKabutops db "Kabutops", 0
nameAerodactyl db "Aerodactyl", 0
nameDragonite db "Dragonite", 0
nameMewtwo db "Mewtwo", 0

; String que contém os tipos
tipoNormal db "Normal", 0
tipoFire db "Fire", 0
tipoWater db "Water", 0
tipoElectric db "Electric", 0
tipoGrass db "Grass", 0
tipoIce db "Ice", 0
tipoFighting db "Fighting", 0
tipoPoison db "Poison", 0
tipoGround db "Ground", 0
tipoFlying db "Flying", 0
tipoPsychic db "Psychic", 0
tipoBug db "Bug", 0
tipoRock db "Rock", 0
tipoGhost db "Ghost", 0
tipoDragon db "Dragon", 0
tipoDark db "Dark", 0
tipoSteel db "Steel", 0
tipoFairy db "Fairy", 0



; Nome | HP | Attack | Defense | Sp. Attack | Sp. Defense | Speed | Tipo 1 | Tipo 2 | Ataques
venusaur dd nameVenusaur, 80, 82, 83, 100, 100, 80, grassType, poisonType, venusaurAttacks
charizard dd nameCharizard, 78, 84, 78, 109, 85, 100, fireType, flyingType, charizardAttacks
blastoise dd nameBlastoise, 79, 83, 100, 85, 105, 78, waterType, waterType, blastoiseAttacks
butterfree dd nameButterfree, 60, 45, 50, 90, 80, 70, bugType, flyingType, butterfreeAttacks
beedrill dd nameBeedrill, 65, 90, 40, 45, 80, 75, bugType, poisonType, beedrillAttacks
pidgeot dd namePidgeot, 83, 80, 75, 70, 70, 101, normalType, flyingType, pidgeotAttacks
raticate dd nameRaticate, 55, 81, 60, 50, 70, 97, normalType, normalType, raticateAttacks
fearow dd nameFearow, 65, 90, 65, 61, 61, 100, normalType, flyingType, fearowAttacks
arbok dd nameArbok, 60, 95, 69, 65, 79, 80, poisonType, poisonType, arbokAttacks
raichu dd nameRaichu, 60, 90, 55, 90, 80, 110, electricType, electricType, raichuAttacks
sandslash dd nameSandslash, 75, 100, 110, 45, 55, 65, groundType, groundType, sandslashAttacks
nidoqueen dd nameNidoqueen, 90, 92, 87, 75, 85, 76, poisonType, groundType, nidoqueenAttacks
nidoking dd nameNidoking, 81, 102, 77, 85, 75, 85, poisonType, groundType, nidokingAttacks
clefable dd nameClefable, 95, 70, 73, 95, 90, 60, fairyType, fairyType, clefableAttacks
ninetales dd nameNinetales, 73, 76, 75, 81, 100, 100, fireType, fireType, ninetalesAttacks
wigglytuff dd nameWigglytuff, 140, 70, 45, 85, 50, 45, normalType, fairyType, wigglytuffAttacks
golbat dd nameGolbat, 75, 80, 70, 65, 75, 90, poisonType, flyingType, golbatAttacks
vileplume dd nameVileplume, 75, 80, 85, 110, 90, 50, grassType, poisonType, vileplumeAttacks
parasect dd nameParasect, 60, 95, 80, 60, 80, 30, bugType, grassType, parasectAttacks
venomoth dd nameVenomoth, 70, 65, 60, 90, 75, 90, bugType, poisonType, venomothAttacks
dugtrio dd nameDugtrio, 35, 100, 50, 50, 70, 120, groundType, groundType, dugtrioAttacks
persian dd namePersian, 65, 70, 60, 65, 65, 115, normalType, normalType, persianAttacks
golduck dd nameGolduck, 80, 82, 78, 95, 80, 85, waterType, waterType, golduckAttacks
primeape dd namePrimeape, 65, 105, 60, 60, 70, 95, fightingType, fightingType, primeapeAttacks
arcanine dd nameArcanine, 90, 110, 80, 100, 80, 95, fireType, fireType, arcanineAttacks
poliwrath dd namePoliwrath, 90, 95, 95, 70, 90, 70, waterType, fightingType, poliwrathAttacks
alakazam dd nameAlakazam, 55, 50, 45, 135, 95, 120, psychicType, psychicType, alakazamAttacks
machamp dd nameMachamp, 90, 130, 80, 65, 85, 55, fightingType, fightingType, machampAttacks
victreebel dd nameVictreebel, 80, 105, 65, 100, 70, 70, grassType, poisonType, victreebelAttacks
tentacruel dd nameTentacruel, 80, 70, 65, 80, 120, 100, waterType, poisonType, tentacruelAttacks
golem dd nameGolem, 80, 120, 130, 55, 65, 45, rockType, groundType, golemAttacks
rapidash dd nameRapidash, 65, 100, 70, 80, 80, 105, fireType, fireType, rapidashAttacks
slowbro dd nameSlowbro, 95, 75, 110, 100, 80, 30, waterType, psychicType, slowbroAttacks
magneton dd nameMagneton, 50, 60, 95, 120, 70, 70, electricType, steelType, magnetonAttacks
farfetchd dd nameFarfetchd, 52, 90, 55, 58, 62, 60, normalType, flyingType, farfetchdAttacks
dodrio dd nameDodrio, 60, 110, 70, 60, 60, 110, normalType, flyingType, dodrioAttacks
dewgong dd nameDewgong, 90, 70, 80, 70, 95, 70, waterType, iceType, dewgongAttacks
muk dd nameMuk, 105, 105, 75, 65, 100, 50, poisonType, poisonType, mukAttacks
cloyster dd nameCloyster, 50, 95, 180, 85, 45, 70, waterType, iceType, cloysterAttacks
gengar dd nameGengar, 60, 65, 60, 130, 75, 110, ghostType, poisonType, gengarAttacks
onix dd nameOnix, 35, 45, 160, 30, 45, 70, rockType, groundType, onixAttacks
hypno dd nameHypno, 85, 73, 70, 73, 115, 67, psychicType, psychicType, hypnoAttacks
kingler dd nameKingler, 55, 130, 115, 50, 50, 75, waterType, waterType, kinglerAttacks
electrode dd nameElectrode, 60, 50, 70, 80, 80, 150, electricType, electricType, electrodeAttacks
exeggutor dd nameExeggutor, 95, 95, 85, 125, 75, 55, grassType, psychicType, exeggutorAttacks
marowak dd nameMarowak, 60, 80, 110, 50, 80, 45, groundType, groundType, marowakAttacks
hitmonlee dd nameHitmonlee, 50, 120, 53, 35, 110, 87, fightingType, fightingType, hitmonleeAttacks
hitmonchan dd nameHitmonchan, 50, 105, 79, 35, 110, 76, fightingType, fightingType, hitmonchanAttacks
lickitung dd nameLickitung, 90, 55, 75, 60, 75, 30, normalType, normalType, lickitungAttacks
weezing dd nameWeezing, 65, 90, 120, 85, 70, 60, poisonType, poisonType, weezingAttacks
rhyhorn dd nameRhyhorn, 80, 85, 95, 30, 30, 25, groundType, rockType, rhyhornAttacks
rhydon dd nameRhydon, 105, 130, 120, 45, 45, 40, groundType, rockType, rhydonAttacks
kangaskhan dd nameKangaskhan, 105, 95, 80, 40, 80, 90, normalType, normalType, kangaskhanAttacks
seadra dd nameSeadra, 55, 65, 95, 95, 45, 85, waterType, waterType, seadraAttacks
seaking dd nameSeaking, 80, 92, 65, 65, 80, 68, waterType, waterType, seakingAttacks
starmie dd nameStarmie, 60, 75, 85, 100, 85, 115, waterType, psychicType, starmieAttacks
mrmime dd nameMrmime, 40, 45, 65, 100, 120, 90, psychicType, fairyType, mrmimeAttacks
scyther dd nameScyther, 70, 110, 80, 55, 80, 105, bugType, flyingType, scytherAttacks
jynx dd nameJynx, 65, 50, 35, 115, 95, 95, iceType, psychicType, jynxAttacks
electabuzz dd nameElectabuzz, 65, 83, 57, 95, 85, 105, electricType, electricType, electabuzzAttacks
magmar dd nameMagmar, 65, 95, 57, 100, 85, 93, fireType, fireType, magmarAttacks
pinsir dd namePinsir, 65, 125, 100, 55, 70, 85, bugType, bugType, pinsirAttacks
tauros dd nameTauros, 75, 100, 95, 40, 70, 110, normalType, normalType, taurosAttacks
gyarados dd nameGyarados, 95, 125, 79, 60, 100, 81, waterType, flyingType, gyaradosAttacks
lapras dd nameLapras, 130, 85, 80, 85, 95, 60, waterType, iceType, laprasAttacks
eevee dd nameEevee, 55, 55, 50, 45, 65, 55, normalType, normalType, eeveeAttacks
vaporeon dd nameVaporeon, 130, 65, 60, 110, 95, 65, waterType, waterType, vaporeonAttacks
jolteon dd nameJolteon, 65, 65, 60, 110, 95, 130, electricType, electricType, jolteonAttacks
flareon dd nameFlareon, 65, 130, 60, 95, 110, 65, fireType, fireType, flareonAttacks
omastar dd nameOmastar, 70, 60, 125, 115, 70, 55, rockType, waterType, omastarAttacks
kabutops dd nameKabutops, 60, 115, 105, 65, 70, 80, rockType, waterType, kabutopsAttacks
aerodactyl dd nameAerodactyl, 80, 105, 65, 60, 75, 130, rockType, flyingType, aerodactylAttacks
dragonite dd nameDragonite, 91, 134, 95, 100, 100, 80, dragonType, flyingType, dragoniteAttacks
mewtwo dd nameMewtwo, 106, 110, 90, 154, 90, 130, psychicType, psychicType, mewtwoAttacks

pokemons dd venusaur, charizard, blastoise, butterfree, beedrill, pidgeot, raticate, fearow, arbok, raichu, sandslash, nidoqueen, nidoking, clefable, ninetales, wigglytuff, golbat, vileplume, parasect, venomoth, dugtrio, persian, golduck, primeape, arcanine, poliwrath, alakazam, machamp, victreebel, tentacruel, golem, rapidash, slowbro, magneton, farfetchd, dodrio, dewgong, muk, cloyster, gengar, onix, hypno, kingler, electrode, exeggutor, marowak, hitmonlee, hitmonchan, lickitung, weezing, rhyhorn, rhydon, kangaskhan, seadra, seaking, starmie, mrmime, scyther, jynx, electabuzz, magmar, pinsir, tauros, gyarados, lapras, eevee, vaporeon, jolteon, flareon, omastar, kabutops, aerodactyl, dragonite, mewtwo