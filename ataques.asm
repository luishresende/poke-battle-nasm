segment .data
; Nomes

; Normal
atackBarrage db "Barrage", 0
atackBind db "Bind", 0
atackBodySlam db "Body Slam", 0
atackCometPunch db "Comet Punch", 0
atackConstrict db "Constrict", 0
atackCut db "Cut", 0
atackDizzyPunch db "Dizzy Punch", 0
atackDoubleSlap db "Double Slap", 0
atackDoubleEdge db "DoubleEdge", 0
atackEggBomb db "Egg Bomb", 0
atackExplosion db "Explosion", 0
atackFuryAttack db "Fury Attack", 0
atackFurySwipes db "Fury Swipes", 0
atackGust db "Gust", 0
atackHeadbutt db "Headbutt", 0
atackHornAttack db "Horn Attack", 0
atackHyperBeam db "Hyper Beam", 0
atackHyperFang db "Hyper Fang", 0
atackKarateChop db "Karate Chop", 0
atackMegaKick db "Mega Kick", 0
atackMegaPunch db "Mega Punch", 0
atackPayDay db "Pay Day", 0
atackPound db "Pound", 0
atackQuickAttack db "Quick Attack", 0
atackRage db "Rage", 0
atackRazorWind db "Razor Wind", 0
atackScratch db "Scratch", 0
atackSelfDestruct db "SelfDestruct", 0
atackSkullBash db "Skull Bash", 0
atackSlam db "Slam", 0
atackSlash db "Slash", 0
atackSpikeCannon db "Spike Cannon", 0
atackStomp db "Stomp", 0
atackStrength db "Strength", 0
atackStruggle db "Struggle", 0
atackSwift db "Swift", 0
atackTackle db "Tackle", 0
atackTakeDown db "Take Down", 0
atackThrash db "Thrash", 0
atackTriAttack db "Tri Attack", 0
atackViceGrip db "Vice Grip", 0
atackWrap db "Wrap", 0
; Fire
atackEmber db "Ember", 0
atackFireBlast db "Fire Blast", 0
atackFirePunch db "Fire Punch", 0
atackFireSpin db "Fire Spin", 0
atackFlamethrower db "Flamethrower", 0
; Water
atackBubble db "Bubble", 0
atackBubbleBeam db "Bubble Beam", 0
atackClamp db "Clamp", 0
atackCrabhammer db "Crabhammer", 0
atackHydroPump db "Hydro Pump", 0
atackSurf db "Surf", 0
atackWaterGun db "Water Gun", 0
atackWaterfall db "Waterfall", 0
; Electric
atackThunder db "Thunder", 0
atackThunderPunch db "Thunder Punch", 0
atackThunderShock db "Thunder Shock", 0
atackThunderbolt db "Thunderbolt", 0
; Grass
atackAbsorb db "Absorb", 0
atackMegaDrain db "Mega Drain", 0
atackPetalDance db "Petal Dance", 0
atackRazorLeaf db "Razor Leaf", 0
atackSolarBeam db "Solar Beam", 0
atackVineWhip db "Vine Whip", 0
; Ice
atackAuroraBeam db "Aurora Beam", 0
atackBlizzard db "Blizzard", 0
atackIceBeam db "Ice Beam", 0
atackIcePunch db "Ice Punch", 0
; Fighting
atackDoubleKick db "Double Kick", 0
atackHighJumpKick db "High Jump Kick", 0
atackJumpKick db "Jump Kick", 0
atackLowKick db "Low Kick", 0
atackRollingKick db "Rolling Kick", 0
atackSubmission db "Submission", 0
; Poison
atackAcid db "Acid", 0
atackPoisonSting db "Poison Sting", 0
atackSludge db "Sludge", 0
atackSmog db "Smog", 0
; Ground
atackBoneClub db "Bone Club", 0
atackBonemerang db "Bonemerang", 0
atackDig db "Dig", 0
atackEarthquake db "Earthquake", 0
; Flying
atackDrillPeck db "Drill Peck", 0
atackFly db "Fly", 0
atackPeck db "Peck", 0
atackSkyAttack db "Sky Attack", 0
atackWingAttack db "Wing Attack", 0
; Psychic
atackConfusion db "Confusion", 0
atackDreamEater db "Dream Eater", 0
atackPsybeam db "Psybeam", 0
atackPsychic db "Psychic", 0
; Bug
atackLeechLife db "Leech Life", 0
atackPinMissile db "Pin Missile", 0
atackTwineedle db "Twineedle", 0
; Rock
atackRockSlide db "Rock Slide", 0
atackRockThrow db "Rock Throw", 0
; Ghost
atackLick db "Lick", 0
; Dragon
; Dark
atackBite db "Bite", 0
; Steel
; Fairy

; Normal | Fire | Water | Electric | Grass | Ice | Fighting | Poison | Groudon | Fly | Psychic | Bug | Rock | Ghost | Dragon | Dark | Steel | Fairy
normalType dd 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 5, 0, 10, 10, 5, 10, tipoNormal, 0
fireType dd 10, 5, 5, 10, 20, 20, 10, 10, 10, 10, 10, 20, 5, 10, 5, 10, 20, 10, tipoFire, 1
waterType dd 10, 20, 5, 10, 5, 10, 10, 10, 20, 10, 10, 10, 20, 10, 5, 10, 10, 10, tipoWater, 2
electricType dd 10, 10, 20, 5, 5, 10, 10, 10, 0, 20, 10, 10, 10, 10, 5, 10, 10, 10, tipoElectric, 3
grassType dd 10, 5, 20, 10, 5, 10, 10, 5, 20, 5, 10, 5, 20, 10, 5, 10, 5, 10, tipoGrass, 4
iceType dd 10, 5, 5, 10, 20, 5, 10, 10, 20, 20, 10, 10, 10, 10, 20, 10, 5, 10, tipoIce, 5
fightingType dd 20, 10, 10, 10, 10, 20, 10, 5, 10, 5, 5, 5, 20, 0, 10, 20, 20, 5, tipoFighting, 6
poisonType dd 10, 10, 10, 10, 20, 10, 10, 5, 5, 10, 10, 10, 5, 5, 10, 10, 0, 10, tipoPoison, 7
groundType dd 10, 20, 10, 20, 5, 10, 10, 20, 10, 0, 10, 5, 20, 10, 10, 10, 20, 10, tipoGround, 8
flyingType dd 10, 10, 10, 5, 20, 10, 20, 10, 10, 10, 10, 20, 5, 10, 10, 10, 5, 10, tipoFlying, 9
psychicType dd 10, 10, 10, 10, 10, 10, 20, 20, 10, 10, 5, 10, 10, 10, 10, 0, 5, 10, tipoPsychic, 10
bugType dd 10, 5, 10, 10, 20, 10, 5, 5, 10, 5, 20, 10, 10, 5, 10, 20, 5, 5, tipoBug, 11
rockType dd 10, 20, 10, 10, 10, 20, 5, 10, 5, 20, 10, 20, 10, 10, 10, 10, 5, 10, tipoRock, 12
ghostType dd 0, 10, 10, 10, 10, 10, 10, 10, 10, 10, 20, 10, 10, 20, 10, 5, 5, 20, tipoGhost, 13
dragonType dd 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 20, 10, 5, 0, tipoDragon, 14
darkType dd 10, 10, 10, 10, 10, 10, 5, 10, 10, 10, 20, 10, 10, 20, 10, 5, 5, 5, tipoDark, 15
steelType dd 10, 5, 5, 5, 10, 20, 10, 10, 10, 10, 10, 10, 20, 10, 10, 10, 5, 20, tipoSteel, 16
fairyType dd 10, 5, 10, 10, 10, 10, 20, 5, 10, 10, 10, 10, 10, 10, 20, 20, 5, 10, tipoFairy, 17

atacksNames dd atackBarrage, atackBind, atackBite, atackBodySlam, atackCometPunch, atackConstrict, atackCut, atackDizzyPunch, atackDoubleSlap, atackDoubleEdge, atackEggBomb, atackExplosion, atackFuryAttack, atackFurySwipes, atackGust, atackHeadbutt, atackHornAttack, atackHyperBeam, atackHyperFang, atackKarateChop, atackMegaKick, atackMegaPunch, atackPayDay, atackPound, atackQuickAttack, atackRage, atackRazorWind, atackScratch, atackSelfDestruct, atackSkullBash, atackSlam, atackSlash, atackSpikeCannon, atackStomp, atackStrength, atackStruggle, atackSwift, atackTackle, atackTakeDown, atackThrash, atackTriAttack, atackViceGrip, atackWrap, atackEmber, atackFireBlast, atackFirePunch, atackFireSpin, atackFlamethrower, atackBubble, atackBubbleBeam, atackClamp, atackCrabhammer, atackHydroPump, atackSurf, atackWaterGun, atackWaterfall, atackThunder, atackThunderPunch, atackThunderShock, atackThunderbolt, atackAbsorb, atackMegaDrain, atackPetalDance, atackRazorLeaf, atackSolarBeam, atackVineWhip, atackAuroraBeam, atackBlizzard, atackIceBeam, atackIcePunch, atackDoubleKick, atackHighJumpKick, atackJumpKick, atackLowKick, atackRollingKick, atackSubmission, atackAcid, atackPoisonSting, atackSludge, atackSmog, atackBoneClub, atackBonemerang, atackDig, atackEarthquake, atackDrillPeck, atackFly, atackPeck, atackSkyAttack, atackWingAttack, atackConfusion, atackDreamEater, atackPsybeam, atackPsychic, atackLeechLife, atackPinMissile, atackTwineedle, atackRockSlide, atackRockThrow, atackLick
atacksElements dd normalType, normalType, darkType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, normalType, fireType, fireType, fireType, fireType, fireType, waterType, waterType, waterType, waterType, waterType, waterType, waterType, waterType, electricType, electricType, electricType, electricType, grassType, grassType, grassType, grassType, grassType, grassType, iceType, iceType, iceType, iceType, fightingType, fightingType, fightingType, fightingType, fightingType, fightingType, poisonType, poisonType, poisonType, poisonType, groundType, groundType, groundType, groundType, flyingType, flyingType, flyingType, flyingType, flyingType, psychicType, psychicType, psychicType, psychicType, bugType, bugType, bugType, rockType, rockType, ghostType
categorys dd 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
powers dd 15, 15, 60, 85, 18, 10, 50, 70, 15, 100, 100, 170, 15, 18, 40, 70, 65, 150, 80, 50, 120, 80, 40, 40, 40, 20, 80, 40, 200, 100, 80, 70, 20, 65, 80, 50, 60, 35, 90, 120, 80, 55, 15, 40, 120, 75, 35, 95, 20, 65, 35, 90, 120, 95, 40, 80, 120, 75, 40, 95, 20, 40, 120, 55, 120, 35, 65, 120, 95, 75, 30, 85, 70, 50, 60, 80, 40, 15, 65, 20, 65, 50, 60, 100, 80, 70, 35, 140, 35, 50, 100, 65, 90, 20, 14, 25, 75, 50, 20
accuracys dd 85, 85, 100, 100, 85, 100, 95, 100, 85, 100, 75, 100, 85, 80, 100, 100, 100, 90, 90, 100, 75, 85, 100, 100, 100, 100, 75, 100, 100, 100, 75, 100, 100, 100, 100, 100, 100, 95, 85, 100, 100, 100, 90, 100, 85, 100, 85, 100, 100, 100, 85, 85, 80, 100, 100, 100, 70, 100, 100, 100, 100, 100, 100, 95, 100, 100, 100, 90, 100, 100, 100, 90, 95, 90, 85, 80, 100, 100, 100, 70, 85, 90, 100, 100, 100, 95, 100, 90, 100, 100, 100, 100, 100, 100, 85, 100, 90, 65, 100
; Venusaur
venusaurAttacks dd 65, 63, 64, 77

; Charizard
charizardAttacks dd 43, 44, 88, 31

; Blastoise
blastoiseAttacks dd 54, 52, 2, 53

; Butterfree
butterfreeAttacks dd 89, 14, 61, 91

; Beedrill
beedrillAttacks dd 12, 94, 95, 86

; Pidgeot
pidgeotAttacks dd 14, 88, 24, 87

; Raticate
raticateAttacks dd 37, 24, 18, 24

; Fearow
fearowAttacks dd 86, 84, 85, 37

; Arbok
arbokAttacks dd 42, 77, 2, 78

; Raichu
raichuAttacks dd 58, 24, 56, 59

; Sandslash
sandslashAttacks dd 27, 31, 82, 83

; Nidoqueen
nidoqueenAttacks dd 27, 3, 17, 83

; Nidoking
nidokingAttacks dd 39, 16, 83, 2

; Clefable
clefableAttacks dd 23, 8, 17, 37

; Ninetales
ninetalesAttacks dd 43, 24, 47, 46

; Wigglytuff
wigglytuffAttacks dd 17, 9, 17, 7

; Golbat
golbatAttacks dd 93, 88, 2, 17

; Vileplume
vileplumeAttacks dd 60, 62, 76, 17

; Parasect
parasectAttacks dd 27, 31, 13, 76

; Venomoth
venomothAttacks dd 37, 89, 93, 91

; Dugtrio
dugtrioAttacks dd 27, 82, 37, 83

; Persian
persianAttacks dd 27, 2, 31, 13

; Golduck
golduckAttacks dd 27, 54, 52, 92

; Primeape
primeapeAttacks dd 27, 19, 13, 39

; Arcanine
arcanineAttacks dd 43, 2, 47, 44

; Poliwrath
poliwrathAttacks dd 48, 3, 52, 75

; Alakazam
alakazamAttacks dd 89, 91, 60, 92

; Machamp
machampAttacks dd 19, 75, 73, 70

; Victreebel
victreebelAttacks dd 37, 65, 63, 30

; Tentacruel
tentacruelAttacks dd 77, 17, 42, 52

; Golem
golemAttacks dd 37, 97, 83, 11

; Rapidash
rapidashAttacks dd 43, 33, 46, 47

; Slowbro
slowbroAttacks dd 54, 89, 92, 52

; Magneton
magnetonAttacks dd 37, 56, 58, 59

; Farfetch'd
farfetchdAttacks dd 86, 37, 31, 17

; Dodrio
dodrioAttacks dd 86, 84, 12, 40

; Dewgong
dewgongAttacks dd 66, 68, 15, 53

; Muk
mukAttacks dd 23, 78, 37, 89

; Cloyster
cloysterAttacks dd 37, 66, 17, 67

; Gengar
gengarAttacks dd 98, 92, 90, 89

; Onix
onixAttacks dd 37, 97, 17, 96

; Hypno
hypnoAttacks dd 23, 89, 92, 90

; Kingler
kinglerAttacks dd 48, 41, 51, 33

; Electrode
electrodeAttacks dd 37, 56, 59, 11

; Exeggutor
exeggutorAttacks dd 0, 33, 10, 92

; Marowak
marowakAttacks dd 80, 15, 81, 39

; Hitmonlee
hitmonleeAttacks dd 70, 72, 74, 71

; Hitmonchan
hitmonchanAttacks dd 4, 86, 21, 45

; Lickitung
lickitungAttacks dd 98, 33, 42, 30

; Weezing
weezingAttacks dd 37, 79, 78, 11

; Rhyhorn
rhyhornAttacks dd 16, 33, 12, 83

; Rhydon
rhydonAttacks dd 16, 33, 97, 83

; Kangaskhan
kangaskhanAttacks dd 4, 25, 2, 7

; Seadra
seadraAttacks dd 48, 54, 52, 53

; Seaking
seakingAttacks dd 86, 16, 53, 55

; Starmie
starmieAttacks dd 37, 54, 58, 52

; Mr. Mime
mrmimeAttacks dd 89, 91, 92, 21

; Scyther
scytherAttacks dd 24, 88, 31, 63

; Jynx
jynxAttacks dd 89, 69, 91, 92

; Electabuzz
electabuzzAttacks dd 24, 58, 57, 59

; Magmar
magmarAttacks dd 43, 45, 79, 47

; Pinsir
pinsirAttacks dd 41, 16, 63, 75

; Tauros
taurosAttacks dd 37, 33, 39, 38

; Gyarados
gyaradosAttacks dd 2, 53, 52, 17

; Lapras
laprasAttacks dd 54, 68, 3, 53

; Eevee
eeveeAttacks dd 37, 24, 2, 38

; Vaporeon
vaporeonAttacks dd 37, 54, 52, 66

; Jolteon
jolteonAttacks dd 37, 58, 59, 70

; Flareon
flareonAttacks dd 37, 43, 46, 47

; Omastar
omastarAttacks dd 54, 2, 52, 53

; Kabutops
kabutopsAttacks dd 27, 31, 83, 96

; Aerodactyl
aerodactylAttacks dd 88, 2, 86, 17

; Dragonite
dragoniteAttacks dd 58, 30, 86, 17

; Mewtwo
mewtwoAttacks dd 89, 92, 36, 17