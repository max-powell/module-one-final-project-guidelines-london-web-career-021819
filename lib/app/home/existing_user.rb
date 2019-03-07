def existing_user(username)
  system('clear')
  user_instance = User.find_by(username: username)
  welcome_back_message(username)
  menu_loop(user_instance)
end

def welcome_back_message(username)
  puts "Welcome back #{username.capitalize}!"
  sleep(1)
end

def menu_loop(user_instance)
  menu_choice = existing_user_menu
  existing_user_menu_action(menu_choice, user_instance)
end

def existing_user_menu
  prompt = TTY::Prompt.new
  prompt.select('What would you like to do?') do |menu|
    menu. enum '.'

    menu.choice "View your pokemon", 1
    menu.choice "BATTLE!!!", 2
    menu.choice "View Leaderboard", 3
    menu.choice "Quit", 4
  end
end

def existing_user_menu_action(menu_choice, user_instance)
  case menu_choice
  when 1
    puts "Here's your battlepack"
    show_battlepack(user_instance)
    continue?(user_instance)
  when 2
    has_pokemon?(user_instance)
    battle_link(user_instance)
    continue?(user_instance)
  when 3
    puts leaderboard
    continue?(user_instance)
  when 4
    puts 'See you next time!'
  end
end

def has_pokemon?(user_instance)
  if user_instance.pokemons.count == 0
    puts "You don't appear to have any pokemons. Please pick at least one pokemon before a battle."
    pokemon_selection(user_instance)
  end
end

def continue?(user_instance)
  prompt = TTY::Prompt.new
  if prompt.yes?('Do you want to do anything else?')
    system('clear')
    menu_loop(user_instance)
  else
    system('clear')
    puts "See you next time!"
  end
end
