def battle_link(user_instance)
  battle_message
  list = usernames_list(user_instance)
  pokemon_list_formatter(list)
end


def battle_message
  puts "Who do you want to challenge?"
end

def usernames_list(user_instance)
  User.all.map{|user| user.username.capitalize  if user != user_instance}.compact
end

def opponent_selection
end

def battlepack_selection
end
