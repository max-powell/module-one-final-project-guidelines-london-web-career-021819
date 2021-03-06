pikachu = Pokemon.create(name: 'pikachu', pokemon_type: 'electric', hp: 190, attack: 54, defence: 31, starting_hp: 190, image: 'lib/images/pikachu.png')
charmander = Pokemon.create(name: 'charmander', pokemon_type: 'fire', hp: 198, attack: 51, defence: 43, starting_hp: 198, image: 'lib/images/charmander.png')
bulbasaur = Pokemon.create(name: 'bulbasaur', pokemon_type: 'grass poison', hp: 210, attack: 48, defence: 48, starting_hp: 210, image: 'lib/images/bulbasaur.png')
squirtle = Pokemon.create(name: 'squirtle', pokemon_type: 'water', hp: 204, attack: 47, defence: 53, starting_hp: 204, image: 'lib/images/squirtle.png')
pidgey = Pokemon.create(name: 'pidgey', pokemon_type: 'normal flying', hp: 200, attack: 45, defence: 40, starting_hp: 200, image: 'lib/images/pidgey.png')
onix = Pokemon.create(name: 'onix', pokemon_type: 'rock ground', hp: 190, attack: 32, defence: 148, starting_hp: 190, image: 'lib/images/onix.png')
koffing = Pokemon.create(name: 'koffing', pokemon_type: 'poison', hp: 200, attack: 59, defence: 32, starting_hp: 200, image: 'lib/images/koffing.webp')
lapras = Pokemon.create(name:'lapras', pokemon_type: 'water ice', hp: 237, attack: 33, defence: 76, starting_hp: 237, image: 'lib/images/lapras.png')
sandshrew = Pokemon.create(name: 'sandshrew', pokemon_type: 'ground', hp: 203, attack: 72, defence: 46, starting_hp: 203, image: 'lib/images/sandshrew.png')
butterfree = Pokemon.create(name: 'butterfree', pokemon_type: 'bug flying', hp: 197, attack: 45, defence: 59, starting_hp: 197, image: 'lib/images/butterfree.png')
mankey = Pokemon.create(name: 'mankey', pokemon_type: 'fighting', hp: 200, attack: 76, defence: 36, starting_hp: 200, image: 'lib/images/mankey.png')


#Pikachu
Move.create(name: 'Thunder Shock', power: 40, accuracy: 90, pp: 5, effective_against: 'water flying', not_effective_against: 'grass electric ground dragon')
Move.create(name: 'Quick Attack', power: 40, accuracy: 90, pp: 5, effective_against: '', not_effective_against: 'rock ghost')
Move.create(name: 'Headbutt', power: 70, accuracy: 90, pp: 3, effective_against: '', not_effective_against: 'rock ghost')
Move.create(name: 'Thunderbolt', power: 90, accuracy: 90, pp: 2, effective_against: 'water flying', not_effective_against: 'grass electric ground dragon')

#Charmander
Move.create(name: 'Scratch', power: 40, accuracy: 90, pp: 5, effective_against: '', not_effective_against: 'rock ghost')
Move.create(name: 'Ember', power: 40, accuracy: 90, pp: 5, effective_against: 'grass ice bug', not_effective_against: 'fire water rock dragon')
Move.create(name: 'Slash', power: 70, accuracy: 90, pp: 3, effective_against: '', not_effective_against: 'rock ghost')
Move.create(name: 'Flamethrower', power: 95, accuracy: 90, pp: 2, effective_against: 'grass ice bug', not_effective_against: 'fire water rock dragon')

#Bulbasaur
Move.create(name: 'Tackle', power: 35, accuracy: 90, pp: 5, effective_against: '', not_effective_against: 'rock ghost')
Move.create(name: 'Vine Whip', power: 35, accuracy: 90, pp: 5, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')
Move.create(name: 'Razor Leaf', power: 55, accuracy: 90, pp: 4, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')
Move.create(name: 'Solar Beam', power: 120, accuracy: 90, pp: 1, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')

#Squirtle moves
Move.create(name:'Bubble', power: 40, accuracy: 90, pp: 5, effective_against: 'fire ground rock', not_effective_against: 'water dragon grass')
Move.create(name:'Hydro Pump', power: 110, accuracy: 85, pp: 1, effective_against: 'fire ground rock', not_effective_against: 'water dragon grass')
Move.create(name:'Skull Bash', power: 110, accuracy: 85, pp: 2, effective_against: '' , not_effective_against: 'rock ghost steel')
Move.create(name:'Waterfall', power: 80, accuracy: 90, pp: 3, effective_against: 'fire ground rock', not_effective_against: 'water dragon grass')

#Pidgey moves
Move.create(name:'Razor Wind', power: 80, accuracy: 75, pp: 3, effective_against: '', not_effective_against: 'rock ghost steel')
Move.create(name:'Wing Attack', power: 100, accuracy: 90, pp: 2, effective_against: 'grass fighting bug', not_effective_against: 'electric rock steel')
Move.create(name:'Air Slash', power: 80, accuracy: 90, pp: 3, effective_against: 'grass fighting bug', not_effective_against: 'electric rock steel')

#Onix moves
Move.create(name:'Earthquake', power: 100, accuracy: 90, pp: 2, effective_against: 'fire electric poison rock steel', not_effective_against: 'grass flying bug')
Move.create(name: 'Rock Throw', power: 50, accuracy: 90, pp: 6, effective_against: 'fire flying ice bug', not_effective_against: 'fighting ground steel')
Move.create(name: 'Rock Slide', power: 75, accuracy: 75, pp: 4, effective_against: 'fire flying ice bug', not_effective_against: 'fighting ground steel')
Move.create(name: 'Tackle', power: 35, accuracy: 90, pp: 6, effective_against: '', not_effective_against: 'rock ghost steel')

#Koffing moves
Move.create(name: 'Smog', power: 40, accuracy: 90, pp: 5, effective_against: 'grass bug', not_effective_against: 'poison ground rock ghost')
Move.create(name: 'Sludge', power: 65, accuracy: 90, pp: 4, effective_against: 'grass bug', not_effective_against: 'poison ground rock ghost')
Move.create(name: 'Explosion', power: 170, accuracy: 15, pp: 2, effective_against: '', not_effective_against: 'rock ghost steel')

#Lapras moves
Move.create(name: 'Ice Beam', power: 95, accuracy: 90, pp: 3, effective_against: 'grass ground flying dragon', not_effective_against: 'fire water ice steel')
Move.create(name: 'Surf', power: 75, accuracy: 90, pp: 4, effective_against: 'fire ground rock', not_effective_against: 'water dragon grass')
Move.create(name: 'Body Slam', power: 80, accuracy: 90, pp: 5, effective_against: '', not_effective_against: 'rock ghost')
Move.create(name: 'Blizzard', power: 120, accuracy: 75, pp: 1, effective_against: 'grass ground flying dragon', not_effective_against: 'fire water ice steel')

#Butterfree moves
Move.create(name: 'Bug Buzz', power: 90, accuracy: 90, pp: 2, effective_against: 'grass psychic dark', not_effective_against: 'fire fighting poison flying ghost steel fairy')
Move.create(name: 'Giga Drain', power: 60, accuracy: 90, pp: 5, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')
Move.create(name:'Aerial Ace', power: 60, accuracy: 90, pp: 5, effective_against: 'grass fighting bug', not_effective_against: 'electric rock steel')
Move.create(name: 'Struggle Bug', power: 40, accuracy: 95, pp: 5, effective_against: 'grass psychic dark', not_effective_against: 'fire fighting poison flying ghost steel fairy')

#Mankey moves
Move.create(name: 'Dynamic Punch', power: 100, accuracy: 55, pp: 2, effective_against: 'normal ice rock dark steel', not_effective_against: 'poison flying psychic bug ghost fairy')
Move.create(name: 'Karate Chop', power: 50, accuracy: 90, pp: 5, effective_against: 'normal ice rock dark steel', not_effective_against: 'poison flying psychic bug ghost fairy')
Move.create(name: 'Low Kick', power: 50, accuracy: 90, pp: 5, effective_against: 'normal ice rock dark steel', not_effective_against: 'poison flying psychic bug ghost fairy')
Move.create(name: 'Fire Punch', power: 75, accuracy: 90, pp: 3, effective_against: 'grass ice bug', not_effective_against: 'fire water rock dragon')

#Sandshrew moves
Move.create(name:'Dig', power: 100, accuracy: 90, pp: 1, effective_against: 'fire electric poison rock steel', not_effective_against: 'grass flying bug')

pikachu.movesets.create(move_id: Move.find_by(name: 'Thunder Shock').id)
pikachu.movesets.create(move_id: Move.find_by(name: 'Quick Attack').id)
pikachu.movesets.create(move_id: Move.find_by(name: 'Headbutt').id)
pikachu.movesets.create(move_id: Move.find_by(name: 'Thunderbolt').id)

charmander.movesets.create(move_id: Move.find_by(name: "Scratch").id)
charmander.movesets.create(move_id: Move.find_by(name: "Ember").id)
charmander.movesets.create(move_id: Move.find_by(name: "Slash").id)
charmander.movesets.create(move_id: Move.find_by(name: "Flamethrower").id)

bulbasaur.movesets.create(move_id: Move.find_by(name: "Tackle").id)
bulbasaur.movesets.create(move_id: Move.find_by(name: "Vine Whip").id)
bulbasaur.movesets.create(move_id: Move.find_by(name: "Razor Leaf").id)
bulbasaur.movesets.create(move_id: Move.find_by(name: "Solar Beam").id)

squirtle.movesets.create(move_id: Move.find_by(name: "Bubble").id)
squirtle.movesets.create(move_id: Move.find_by(name: "Hydro Pump").id)
squirtle.movesets.create(move_id: Move.find_by(name: "Skull Bash").id)
squirtle.movesets.create(move_id: Move.find_by(name: "Waterfall").id)

pidgey.movesets.create(move_id: Move.find_by(name: "Quick Attack").id)
pidgey.movesets.create(move_id: Move.find_by(name: "Razor Wind").id)
pidgey.movesets.create(move_id: Move.find_by(name: "Air Slash").id)
pidgey.movesets.create(move_id: Move.find_by(name: "Wing Attack").id)

onix.movesets.create(move_id: Move.find_by(name: "Earthquake").id)
onix.movesets.create(move_id: Move.find_by(name: "Rock Throw").id)
onix.movesets.create(move_id: Move.find_by(name: "Rock Slide").id)
onix.movesets.create(move_id: Move.find_by(name: "Tackle").id)

koffing.movesets.create(move_id: Move.find_by(name: "Tackle").id)
koffing.movesets.create(move_id: Move.find_by(name: "Smog").id)
koffing.movesets.create(move_id: Move.find_by(name: "Sludge").id)
koffing.movesets.create(move_id: Move.find_by(name: "Explosion").id)

lapras.movesets.create(move_id: Move.find_by(name: "Ice Beam").id)
lapras.movesets.create(move_id: Move.find_by(name: "Surf").id)
lapras.movesets.create(move_id: Move.find_by(name: "Body Slam").id)
lapras.movesets.create(move_id: Move.find_by(name: "Blizzard").id)

butterfree.movesets.create(move_id: Move.find_by(name: "Bug Buzz").id)
butterfree.movesets.create(move_id: Move.find_by(name: "Giga Drain").id)
butterfree.movesets.create(move_id: Move.find_by(name: "Aerial Ace").id)
butterfree.movesets.create(move_id: Move.find_by(name: "Struggle Bug").id)

mankey.movesets.create(move_id: Move.find_by(name: "Dynamic Punch").id)
mankey.movesets.create(move_id: Move.find_by(name: "Karate Chop").id)
mankey.movesets.create(move_id: Move.find_by(name: "Low Kick").id)
mankey.movesets.create(move_id: Move.find_by(name: "Fire Punch").id)

sandshrew.movesets.create(move_id: Move.find_by(name: "Slash").id)
sandshrew.movesets.create(move_id: Move.find_by(name: "Earthquake").id)
sandshrew.movesets.create(move_id: Move.find_by(name: "Dig").id)
sandshrew.movesets.create(move_id: Move.find_by(name: "Scratch").id)

max = User.create(username: 'max', wins: 0, losses: 0)
khang = User.create(username: 'khang', wins: 0, losses: 0)

max.battle_packs.create(pokemon_id: Pokemon.find_by_name('squirtle').id)
max.battle_packs.create(pokemon_id: Pokemon.find_by_name('sandshrew').id)
max.battle_packs.create(pokemon_id: Pokemon.find_by_name('onix').id)

khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('lapras').id)
khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('charmander').id)
khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('bulbasaur').id)
