#### create new user and prompt them to choose 3 pokemons for their battle_pack.
def new_user(username)
  user = User.create(username: username, wins: 0, losses: 0)
  new_user_welcome_message(user)
  sleep(2)
  pokemon_selection(user)
  sleep(1)
  system('clear')
  menu_loop(user)
end

def new_user_welcome_message(user)
  puts "Hi #{user.username.capitalize}! We haven't seen you around here before and you don't seem to have any pokemons. No self-respecting trainer walks around with no pokemons."
end

def pokemon_selection(user)
  pokemon_selection_message
  sleep(2)
  pokemon_selection_loop(user)
  show_battlepack(user) #in utility_methods.rb
  puts "\nPress enter to continue..."
  gets
end

def pokemon_selection_message
  puts "You will be choosing 3 companions for your battlepack to help you progress through your journey as a poke-trainer. Here's a list of available pokemons."
end

def pokemon_selection_loop(user)
  while user.battle_packs.count < 3
    battlepack_space_message(user)
    # pokemon_list_formatter(pokemon_list) #in utility_methods.rb
    pokemon_instance = Pokemon.find_by_name(gets_pokemon_name)
    create_battlepack_instance(user, pokemon_instance)
  end
  system('clear')
  puts "Congratulations #{user.username.capitalize}, you have selected your 3 pokemons."
end

def battlepack_space_message(user)
  puts "\nYou have #{3 - user.battle_packs.count} spaces left in your battlepack."
end

def gets_pokemon_name
  prompt = TTY::Prompt.new
  prompt.select('Choose a pokemon:', pokemon_list)
end

def pokemon_list
  Pokemon.all.map(&:name)
end

def create_battlepack_instance(user, pokemon_instance)
  user.battle_packs.create(pokemon_id: pokemon_instance.id)
end
