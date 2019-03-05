current = User.all[0].battle_packs[0] #instance of BattlePack
target = User.all[1].battle_packs[0] #instance of BattlePack

def battle_intro(current, target)
  puts "It's #{current.user.username.capitalize}'s #{current.pokemon.name} VS. #{target.user.username.capitalize}'s #{target.pokemon.name}!!!!"
end

def battle_turn(current, target)
  puts "It's #{current.pokemon.name}'s turn!'"
  move_selection = get_move_selection(current)
  move = current.pokemon.moves[move_selection-1]
  current.pokemon.attack_target(move, target.pokemon)
  binding.pry
end

def get_move_selection(current)
  puts "What would you like to do? Choose the number linked to the move"
  moves_list_formatted(current.pokemon)
  input = STDIN.gets.chomp.to_i
  if (1..4).include?(input)
    return input
  else
    puts "Invalid selection."
    get_move_selection
  end
end

def moves_list_formatted(pokemon)
  moves_list(pokemon).each_with_index { |move, index| puts "#{index + 1}. #{move}"}
end

def moves_list(pokemon)
  pokemon.moves.map(&:name)
end

current_pokemon, target_pokemon = target_pokemon, current_pokemon
