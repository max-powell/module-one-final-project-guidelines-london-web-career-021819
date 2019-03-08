pikachu = Pokemon.create(name: 'pikachu', pokemon_type: 'electric', hp: 190, attack: 54, defence: 31, starting_hp: 190, image: 'lib/images/pikachu.png')
charmander = Pokemon.create(name: 'charmander', pokemon_type: 'fire', hp: 198, attack: 51, defence: 43, starting_hp: 198, image: 'lib/images/charmander.png')
bulbasaur = Pokemon.create(name: 'bulbasaur', pokemon_type: 'grass poison', hp: 210, attack: 48, defence: 48, starting_hp: 210, image: 'lib/images/bulbasaur.png')
squirtle = Pokemon.create(name: 'squirtle', pokemon_type: 'water', hp: 204, attack: 47, defence: 53, starting_hp: 204, image: 'lib/images/squirtle.png')
pidgey = Pokemon.create(name: 'pidgey', pokemon_type: 'normal flying', hp: 200, attack: 45, defence: 40, starting_hp: 200, image: 'lib/images/pidgey.png')
onix = Pokemon.create(name: 'onix', pokemon_type: 'rock ground', hp: 190, attack: 32, defence: 148, starting_hp: 190, image: 'lib/images/onix.png')


#Pikachu
Move.create(name: 'Thunder Shock', power: 40, accuracy: 90, pp: 3, effective_against: 'water flying', not_effective_against: 'grass electric ground dragon')
Move.create(name: 'Quick Attack', power: 40, accuracy: 90, pp: 3, effective_against: nil, not_effective_against: 'rock ghost')
Move.create(name: 'Headbutt', power: 70, accuracy: 90, pp: 2, effective_against: nil, not_effective_against: 'rock ghost')
Move.create(name: 'Thunderbolt', power: 90, accuracy: 90, pp: 2, effective_against: 'water flying', not_effective_against: 'grass electric ground dragon')

#Charmander
Move.create(name: 'Scratch', power: 40, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: 'rock ghost')
Move.create(name: 'Ember', power: 40, accuracy: 90, pp: 4, effective_against: 'grass ice bug', not_effective_against: 'fire water rock dragon')
Move.create(name: 'Slash', power: 70, accuracy: 90, pp: 2, effective_against: nil, not_effective_against: 'rock ghost')
Move.create(name: 'Flamethrower', power: 95, accuracy: 90, pp: 2, effective_against: 'grass ice bug', not_effective_against: 'fire water rock dragon')

#Bulbasaur
Move.create(name: 'Tackle', power: 35, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: 'rock ghost')
Move.create(name: 'Vine Whip', power: 35, accuracy: 90, pp: 4, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')
Move.create(name: 'Razor Leaf', power: 55, accuracy: 90, pp: 3, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')
Move.create(name: 'Solar Beam', power: 120, accuracy: 90, pp: 1, effective_against: 'water ground rock', not_effective_against: 'fire grass poison flying bug dragon')

#Squirtle moves
Move.create(name:‘Bubble’, power: 40, accuracy: 90, pp: 3, effective_against: ‘fire ground rock’, not_effective_against: ‘water dragon grass’)
Move.create(name:‘Hydro Pump’, power: 110, accuracy: 80, pp: 1, effective_against: ‘fire ground rock’, not_effective_against: ‘water dragon grass’)
Move.create(name:‘Skull Bash’, power: 110, accuracy: 80, pp: 1, effective_against: nil , not_effective_against: ‘rock ghost steel’)
Move.create(name:‘Waterfall’, power: 80, accuracy: 90, pp: 2, effective_against: ‘fire ground rock’, not_effective_against: ‘water dragon grass’)

#Pidgey moves
Move.create(name:‘Razor Wind’, power: 80, accuracy: 75, pp: 1, effective_against: nil, not_effective_against: ‘rock ghost steel’)
Move.create(name:‘Wing Attack’, power: 100, accuracy: 90, pp: 1, effective_against: ‘grass fighting bug’, not_effective_against: ‘electric rock steel’)
Move.create(name:‘Air Slash’, power: 80, accuracy: 90, pp: 3, effective_against: ‘grass fighting bug’, not_effective_against: ‘electric rock steel’)

#Onix moves
Move.create(name:‘Earthquake’, power: 100, accuracy: 90, pp: 1, effective_against: ‘fire electric poison rock steel’, not_effective_against: ‘grass flying bug’)
Move.create(name: ‘Rock Throw’, power: 50, accuracy: 90, pp: 2, effective_against: ‘fire flying ice bug’, not_effective_against: ‘fighting ground steel’)
Move.create(name: ‘Rock Slide’, power: 75, accuracy: 75, pp: 1, effective_against: ‘fire flying ice bug’, not_effective_against: ‘fighting ground steel’)
Move.create(name: ‘Tackle’, power: 35, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: ‘rock ghost steel’)


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

pidgey.movesets.create(move_id: Move.find_by(name: “Quick Attack”).id)
pidgey.movesets.create(move_id: Move.find_by(name: “Razor Wind”).id)
pidgey.movesets.create(move_id: Move.find_by(name: “Air Slash”).id)
pidgey.movesets.create(move_id: Move.find_by(name: “Wing Attack”).id)

onix.movesets.create(move_id: Move.find_by(name: "Earthquake").id)
onix.movesets.create(move_id: Move.find_by(name: "Rock Throw").id)
onix.movesets.create(move_id: Move.find_by(name: "Rock Slide").id)
onix.movesets.create(move_id: Move.find_by(name: "Tackle").id)

max = User.create(username: 'max', wins: 0, losses: 0)
khang = User.create(username: 'khang', wins: 0, losses: 0)

max.battle_packs.create(pokemon_id: Pokemon.find_by_name('squirtle').id)
max.battle_packs.create(pokemon_id: Pokemon.find_by_name('pidgey').id)
max.battle_packs.create(pokemon_id: Pokemon.find_by_name('onix').id)

khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('pikachu').id)
khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('charmander').id)
khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('bulbasaur').id)
