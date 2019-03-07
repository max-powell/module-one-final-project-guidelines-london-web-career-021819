pikachu = Pokemon.create(name: 'pikachu', pokemon_type: 'electric', hp: 95, attack: 54, defence: 31, starting_hp: 95, image: 'lib/images/pikachu.png')
charmander = Pokemon.create(name: 'charmander', pokemon_type: 'fire', hp: 99, attack: 51, defence: 43, starting_hp: 99, image: 'lib/images/charmander.png')
bulbasaur = Pokemon.create(name: 'bulbasaur', pokemon_type: 'grass', hp: 105, attack: 48, defence: 48, starting_hp: 105, image: 'lib/images/bulbasaur.png')
squirtle = Pokemon.create(name: 'squirtle', pokemon_type: 'water', hp: 104, attack: 47, defence: 53, starting_hp: 104, image: 'lib/images/squirtle.png')
pidgey = Pokemon.create(name: 'pidgey', pokemon_type: 'normal', hp: 100, attack: 45, defence: 40, starting_hp: 100, image: 'lib/images/pidgey.png')
onix = Pokemon.create(name: 'onix', pokemon_type: 'rock', hp: 95, attack: 45, defence: 148, starting_hp: 95, image: 'lib/images/onix.png')


#Pikachu
Move.create(name: 'Thunder Shock', power: 40, accuracy: 90, pp: 3, effective_against: 'water', not_effective_against: 'grass')
Move.create(name: 'Quick Attack', power: 40, accuracy: 90, pp: 3, effective_against: nil, not_effective_against: 'rock')
Move.create(name: 'Headbutt', power: 70, accuracy: 90, pp: 2, effective_against: nil, not_effective_against: 'rock')
Move.create(name: 'Thunderbolt', power: 90, accuracy: 90, pp: 2, effective_against: 'water', not_effective_against: 'grass')

#Charmander
Move.create(name: 'Scratch', power: 40, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: 'rock')
Move.create(name: 'Ember', power: 40, accuracy: 90, pp: 4, effective_against: 'grass', not_effective_against: 'water')
Move.create(name: 'Slash', power: 70, accuracy: 90, pp: 2, effective_against: nil, not_effective_against: 'rock')
Move.create(name: 'Flamethrower', power: 95, accuracy: 90, pp: 2, effective_against: 'grass', not_effective_against: 'water')

#Bulbasaur
Move.create(name: 'Tackle', power: 35, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: 'rock')
Move.create(name: 'Vine Whip', power: 35, accuracy: 90, pp: 4, effective_against: 'water', not_effective_against: 'fire')
Move.create(name: 'Razor Leaf', power: 55, accuracy: 90, pp: 3, effective_against: 'water', not_effective_against: 'fire')
Move.create(name: 'Solar Beam', power: 120, accuracy: 90, pp: 1, effective_against: 'water', not_effective_against: 'fire')

#Squirtle moves
Move.create(name:'Bubble', power: 40, accuracy: 90, pp: 3, effective_against: 'fire', not_effective_against: 'grass')
Move.create(name:'Hydro Pump', power: 110, accuracy: 80, pp: 1, effective_against: 'fire', not_effective_against: 'grass')
Move.create(name:'Skull Bash', power: 110, accuracy: 80, pp: 1, effective_against: nil , not_effective_against: nil)
Move.create(name:'Waterfall', power: 80, accuracy: 90, pp: 2, effective_against: 'fire' , not_effective_against: 'grass')

#Pidgey moves
Move.create(name:'Razor Wind', power: 80, accuracy: 75, pp: 1, effective_against: nil, not_effective_against: nil)
Move.create(name:'Double-Edge', power: 100, accuracy: 90, pp: 1, effective_against: nil, not_effective_against: nil)
Move.create(name:'Gust', power: 40, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: nil)

#Onix moves
Move.create(name:'Earthquake', power: 100, accuracy: 90, pp: 1, effective_against: 'fire', not_effective_against: nil)
Move.create(name: 'Rock Throw', power: 50, accuracy: 65, pp: 2, effective_against: 'fire', not_effective_against: nil)
Move.create(name: 'Rock Slide', power: 75, accuracy: 90, pp: 1, effective_against: 'fire', not_effective_against: nil)
Move.create(name: 'Tackle', power: 35, accuracy: 90, pp: 4, effective_against: nil, not_effective_against: nil)


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
pidgey.movesets.create(move_id: Move.find_by(name: "Double-Edge").id)
pidgey.movesets.create(move_id: Move.find_by(name: "Gust").id)

onix.movesets.create(move_id: Move.find_by(name: "Earthquake").id)
onix.movesets.create(move_id: Move.find_by(name: "Rock Throw").id)
onix.movesets.create(move_id: Move.find_by(name: "Rock Slide").id)
onix.movesets.create(move_id: Move.find_by(name: "Tackle").id)

max = User.create(username: 'max')
khang = User.create(username: 'khang')

max.battle_packs.create(pokemon_id: Pokemon.find_by_name('squirtle').id)
max.battle_packs.create(pokemon_id: Pokemon.find_by_name('pidgey').id)
max.battle_packs.create(pokemon_id: Pokemon.find_by_name('onix').id)

khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('pikachu').id)
khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('charmander').id)
khang.battle_packs.create(pokemon_id: Pokemon.find_by_name('bulbasaur').id)
