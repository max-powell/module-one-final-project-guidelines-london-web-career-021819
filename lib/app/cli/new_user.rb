#### create new user and prompt them to choose 3 pokemons for their battle_pack.
def new_user(username)
  user = User.create(username: username)
  new_user_welcome_message(user)
  pokemon_selection(user)
  menu_loop(user)
end

def new_user_welcome_message(user)
  puts "Hi #{user.username}! We haven't seen you around here before and you don't seem to have any pokemons. No self-respected trainer walks around with no pokemons."
end

def pokemon_selection(user)
  pokemon_selection_message
  pokemon_selection_loop(user)
  show_battlepack(user) #in utility_methods.rb
end

def pokemon_selection_message
  puts "You will be choosing 3 companions for your battlepack to help you progress through your journey as a poke-trainer. Here's a list of available pokemons."
end

def pokemon_selection_loop(user)
  while battlepack_count(user) < 3
    battlepack_space_message(user)
    pokemon_list_formatter(pokemon_list) #in utility_methods.rb
    pokemon_instance = gets_pokemon_instance
    create_battlepack_instance(user, pokemon_instance)
  end
  puts "Congratulations #{user.username}, you have selected your 3 pokemons."
end

def battlepack_space_message(user)
  puts "You have #{3-battlepack_count(user)} spaces left in your battlepack."
end

def gets_pokemon_instance
  pokemon_string = gets_pokemon_user_string
  Pokemon.find_by(name: pokemon_string)
end

def gets_pokemon_user_string
  puts "Pick a pokemon"
  input = gets.chomp.capitalize
  if pokemon_list.include?(input)
    return input
  else
    puts "Invalid pokemon name selection."
    gets_pokemon_user_string
  end
end

def create_battlepack_instance(user, pokemon_instance)
  user.battle_packs.create(pokemon_id: pokemon_instance.id)
end


def pokemon_list
  Pokemon.all.map(&:name)
end

def battlepack_count(user)
  user.battle_packs.count
end
