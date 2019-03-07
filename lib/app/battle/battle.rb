def battle(left, right)
  battle_intro(left, right)
  battle_loop(left, right)
  puts "\n#{left.user.username.capitalize}..."
end

def battle_intro(left, right)
  system('clear')
  sleep(1)
  puts "It's #{left.user.username.capitalize}'s #{left.pokemon.name.capitalize}..."
  sleep(1)
  puts "VS."
  sleep(1.5)
  puts "#{right.user.username.capitalize}'s #{right.pokemon.name.capitalize}!!!!"
  sleep(1.5)
end

def battle_loop(left, right)
  current = left
  target = right
  loop do
    system('clear')
    generate_screen(left, right)
    move = move_choice(current)
    system('clear')
    generate_screen(left, right)
    current.pokemon.attack_target(move, target.pokemon)
    puts "\nPress enter to continue..."
    STDIN.gets
    break if target.pokemon.hp == 0
    current, target = target, current
  end
  system('clear')
  generate_screen(left, right)
  puts "#{target.pokemon.name.capitalize} fainted!"
end

def move_choice(current)
  puts "It's #{current.pokemon.name.capitalize}'s turn!"
  get_move_selection(current)
end

def puts_stats(*battle_packs)
  puts ""
  battle_packs.each do |battle_pack|
    puts "#{battle_pack.pokemon.name.capitalize}, hp: #{battle_pack.pokemon.hp}"
  end
  puts "\nPress enter to continue..."
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
