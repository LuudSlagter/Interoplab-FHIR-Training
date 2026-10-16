CodeSystem: AnimalSpecies_CS
Id: AnimalSpecies
Title: "AnimalSpecies CodeSystem"
Description: "Code system that lists animal species that only live in the Kanto region."
* ^name = "AnimalSpecies"
* ^status = #active
* ^content = #complete
* ^count = 4
* #DG "Digimon"
* #MB "Medabots"
* #PKMN "Pokémon"
* #YK "Yo-Kai"

CodeSystem: Regions_CS
Id: Regions
Title: "Regions CodeSystem"
Description: "Code system that lists all regions of Japan."
* ^name = "Regions"
* ^status = #active
* ^content = #complete
* ^count = 3
* #KANTO "Kanto"
* #JOHTO "Johto"
* #HOENN "Hoenn"
* #SINNOH "Sinnoh"

CodeSystem: KantoCities_CS
Id: KantoCities
Title: "KantoCities CodeSystem"
Description: "Code system that lists all cities of the Kanto region."
* ^name = "KantoCities"
* ^status = #current
* ^content = #notpresent
* ^count = 11
* #PALLET "Pallet Town"
* #VIRIDIAN "Viridian City"
* #PEWTER "Pewter City"
* #CERULEAN "Cerulean City"
* #VERMILION "Vermilion City"
* #LAVENDER "Lavender Town"
* #CELADON "Celadon City"
* #SAFFRON "Saffron City"
* #FUCHSIA "Fuchsia City"
* #CINNABAR "Cinnabar Island"
* #INDIGO "Indigo Plateau"

CodeSystem: KantoPokedex_CS
Id: KantoPokedex
Title: "KantoPokedex CodeSystem"
Description: "Code system that lists all Pokémon native to the Kanto region."
* ^name = "KantoPokedex"
* ^status = #active
* ^content = #complete
* ^count = 151
* ^property[0].code = #gender
* ^property[0].description = "Possible gender of the Pokémon. If this property is not specified, the genders _male_ and _female_ are possible."
* ^property[0].type = #code
* #1 "Bulbasaur"
* #2 "Ivysaur"
* #3 "Venusaur"
* #4 "Charmander"
* #5 "Charmeleon"
* #6 "Charizard"
* #7 "Squirtle"
* #8 "Wartortle"
* #9 "Blastoise"
* #10 "Caterpie"
* #11 "Metapod"
* #12 "Butterfree"
* #13 "Weedle"
* #14 "Kakuna"
* #15 "Beedrill"
* #16 "Pidgey"
* #17 "Pidgeotto"
* #18 "Pidgeot"
* #19 "Rattata"
* #20 "Raticate"
* #21 "Spearow"
* #22 "Fearow"
* #23 "Ekans"
* #24 "Arbok"
* #25 "Pikachu"
* #26 "Raichu"
* #27 "Sandshrew"
* #28 "Sandslash"
* #29 "Nidoran ♀"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #female
* #30 "Nidorina"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #female
* #31 "Nidoqueen"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #female
* #32 "Niodoran ♂"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #male
* #33 "Nidorino"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #male
* #34 "Nidoking"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #male
* #35 "Clefairy"
* #36 "Clefable"
* #37 "Vulpix"
* #38 "Ninetales"
* #39 "Jigglypuff"
* #40 "Wigglytuff"
* #41 "Zubat"
* #42 "Golbat"
* #43 "Oddish"
* #44 "Gloom"
* #45 "Vileplume"
* #46 "Paras"
* #47 "Parasect"
* #48 "Venonat"
* #49 "Venomoth"
* #50 "Diglett"
* #51 "Dugtrio"
* #52 "Meowth"
* #53 "Persian"
* #54 "Psyduck"
* #55 "Golduck"
* #56 "Mankey"
* #57 "Primeape"
* #58 "Growlithe"
* #59 "Arcanine"
* #60 "Poliwag"
* #61 "Poliwhirl"
* #62 "Poliwrath"
* #63 "Abra"
* #64 "Kadabra"
* #65 "Alakazam"
* #66 "Machop"
* #67 "Machoke"
* #68 "Machamp"
* #69 "Bellsprout"
* #70 "Weepinbell"
* #71 "Victreebel"
* #72 "Tentacool"
* #73 "Tentacruel"
* #74 "Geodude"
* #75 "Graveler"
* #76 "Golem"
* #77 "Ponyta"
* #78 "Rapidash"
* #79 "Slowpoke"
* #80 "Slowbro"
* #81 "Magnemite"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #82 "Magneton"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #83 "Farfetch'd"
* #84 "Doduo"
* #85 "Dodrio"
* #86 "Seel"
* #87 "Dewgong"
* #88 "Grimer"
* #89 "Muk"
* #90 "Shellder"
* #91 "Cloyster"
* #92 "Gastly"
* #93 "Haunter"
* #94 "Gengar"
* #95 "Onix"
* #96 "Drowzee"
* #97 "Hypno"
* #98 "Krabby"
* #99 "Kingler"
* #100 "Voltorb"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #101 "Electrode"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #102 "Exeggcute"
* #103 "Exeggutor"
* #104 "Cubone"
* #105 "Marowak"
* #106 "Hitmonlee"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #male
* #107 "Hitmonchan"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #male
* #108 "Lickitung"
* #109 "Koffing"
* #110 "Weezing"
* #111 "Rhyhorn"
* #112 "Rhydon"
* #113 "Chansey"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #female
* #114 "Tangela"
* #115 "Kangaskhan"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #female
* #116 "Horsea"
* #117 "Seadra"
* #118 "Goldeen"
* #119 "Seaking"
* #120 "Staryu"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #121 "Starmie"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #122 "Mr. Mime"
* #123 "Scyther"
* #124 "Jynx"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #female
* #125 "Electabuzz"
* #126 "Magmar"
* #127 "Pinsir"
* #128 "Tauros"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #male
* #129 "Magikarp"
* #130 "Gyarados"
* #131 "Lapras"
* #132 "Ditto"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #133 "Eevee"
* #134 "Vaporeon"
* #135 "Jolteon"
* #136 "Flareon"
* #137 "Porygon"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #138 "Omanyte"
* #139 "Omastar"
* #140 "Kabuto"
* #141 "Kabutops"
* #142 "Aerodactyl"
* #143 "Snorlax"
* #144 "Articuno"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #145 "Zapdos"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #146 "Moltres"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #147 "Dratini"
* #148 "Dragonair"
* #149 "Dragonite"
* #150 "Mewtwo"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown
* #151 "Mew"
  * ^property[0].code = #gender
  * ^property[0].valueCode = #unknown