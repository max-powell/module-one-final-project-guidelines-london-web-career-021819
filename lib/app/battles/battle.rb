left = User.all[0].battle_packs[0] #instance of BattlePack
right = User.all[1].battle_packs[0] #instance of BattlePack

def battle(left, right)
  current = left
  target = right
  battle_intro(current, target)
  while current.pokemon.hp > 0 && target.pokemon.hp > 0
    battle_turn(current, target)
    current, target = target, current
  end
end

def battle_intro(current, target)
  puts "It's #{current.user.username.capitalize}'s #{current.pokemon.name} VS. #{target.user.username.capitalize}'s #{target.pokemon.name}!!!!"
end

def battle_turn(current, target)
  puts "It's #{current.pokemon.name}'s turn!'"
  move = get_move_selection(current)
  current.pokemon.attack_target(move, target.pokemon)
end


def puts_stats(*battle_packs)
  battle_packs.each do |battle_pack|
    puts "#{battle_pack.pokemon.name}, hp: #{battle_pack.pokemon.hp}"
  end
end

def get_move_selection(current)
  puts "What would you like to do? Choose the number linked to the move"
  moves_list_formatted(current.pokemon)
  input = STDIN.gets.chomp.to_i
  if (1..4).include?(input) && current.pokemon.moves[input-1].pp > 0
    current.pokemon.moves[input-1]
  else
    puts "Invalid selection."
    get_move_selection
  end
end

def moves_list_formatted(pokemon)
  pokemon.moves.each_with_index { |move, index| puts "#{index + 1}. #{move.name}, pp: #{move.pp}"}
end
