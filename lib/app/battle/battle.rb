def battle(left, right)
  current = left
  target = right
  battle_intro(current, target)
  loop do
    battle_turn(current, target)
    puts_stats(left, right)
    break if target.pokemon.hp == 0
    current, target = target, current
  end
  system('clear')
  puts "#{target.pokemon.name.capitalize} fainted!"
  puts "\n#{left.user.username.capitalize}..."
end

def battle_intro(current, target)
  system('clear')
  sleep(1)
  puts "It's #{current.user.username.capitalize}'s #{current.pokemon.name.capitalize}..."
  puts "VS."
  sleep(1.5)
  puts "#{target.user.username.capitalize}'s #{target.pokemon.name.capitalize}!!!!"
end

def battle_turn(current, target)
  system('clear')
  sleep(1)
  puts "It's #{current.pokemon.name}'s turn!"
  move = get_move_selection(current)
  current.pokemon.attack_target(move, target.pokemon)
end


def puts_stats(*battle_packs)
  puts ""
  battle_packs.each do |battle_pack|
    puts "#{battle_pack.pokemon.name.capitalize}, hp: #{battle_pack.pokemon.hp}"
  end
  puts "\nPress any key to continue..."
  gets
end

def get_move_selection(current)
  prompt = TTY::Prompt.new
  move_list = current.pokemon.moves.map do |move|
    "#{move.name}, pp: #{move.pp}, power: #{move.power}"
  end
  selection = prompt.select("Choose your attack!") do |menu|
    menu.enum '.'

    menu.choice move_list[0], 0
    menu.choice move_list[1], 1
    menu.choice move_list[2], 2
    menu.choice move_list[3], 3
  end
  if current.pokemon.moves[selection].pp == 0
    puts "That move is out of PP! You'll need to choose a different one..."
    puts ""
    get_move_selection(current)
  end
  current.pokemon.moves[selection]
end
