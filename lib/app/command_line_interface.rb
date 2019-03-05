
### welcome greeting and prompt user to enter username.
def welcome
  puts "Welcome to the world of Pokemon!"
end

def gets_username
  puts "What is your name poke-trainer?"
  username = STDIN.gets.chomp
end


### create new user and prompt them to choose 3 pokemons for their battle_pack.
def new_user(username)
  User.create(username: username)
  puts "Hi #{username}! We haven't seen you around here before and you don't seem to have any pokemons. No self-respected trainer walks around with no pokemons."
  pokemon_selection
end


def pokemon_selection
  pokemon_selection_message
  pokemon_list_formatter
end

def pokemon_selection_message
  puts "You will be choosing 3 companions for your battlepack to help you progress through your journey as a poke-trainer. Here's a list of available pokemons"
end

def pokemon_list_formatter
  pokemon_list.each_with_index {|name, index| puts "#{index+1}. #{name}"}
end

def pokemon_list
  Pokemon.all.map(&:name)
end

### check whether the user exists in the db.
def existing_user_outcome(username)
  if existing_user?(username)
    puts "In development"
  else
    new_user(username)
  end
end

def existing_user?(username)
  User.exists?(username:username)
end
