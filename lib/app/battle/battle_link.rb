def battle_link(user_instance)
  battle_message
  list = usernames_list(user_instance)
  pokemon_list_formatter(list)
  opponent_number = gets_selection_index(list) #utility_methods
  opponent_instance = opponent_instance_creation(list, opponent_number)
  user_battlepack =  battlepack_selection(user_instance)
  opponent_battlepack = battlepack_selection(opponent_instance)
  battle(user_battlepack, opponent_battlepack)
end


def battle_message
  puts "Who do you want to challenge?"
end

def usernames_list(user_instance)
  User.all.map{|user| user.username.capitalize  if user != user_instance}.compact
end


def opponent_instance_creation(list, opponent_number)
  username = list[opponent_number].downcase
  User.find_by(username: username)
end

def battlepack_selection(instance)
  puts "What pokemon do you want to pick for your battle??"
  show_battlepack(instance)
  input = gets_selection_index(instance.battle_packs)
  instance.battle_packs[input]
end
