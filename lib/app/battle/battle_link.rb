def battle_link(user_instance)
  list = usernames_list(user_instance)
  opponent_string = choose_opponent(list).downcase
  opponent = User.find_by(username: opponent_string)
  user_battle_pack = battle_pack_retriever(user_instance)
  opponent_battle_pack = battle_pack_retriever(opponent)
  battle(user_battle_pack, opponent_battle_pack)
end

def usernames_list(user_instance)
  list = User.all.map do |user|
    user.username.capitalize if user.username != user_instance.username &&
    user.pokemons.count > 0
  end
  list.compact.sort
end

def choose_opponent(list)
  prompt = TTY::Prompt.new
  system('clear')
  prompt.select('Who do you want to challenge?', list, per_page: 10)
end

def opponent_instance_creation(list, opponent_number)
  username = list[opponent_number].downcase
  User.find_by(username: username)
end

def battle_pack_retriever(user)
  battle_pack_index = pokemon_battle_selection(user).to_i - 1
  user.battle_packs[battle_pack_index]
end

def pokemon_battle_selection(user)
  system('clear')
  prompt = TTY::Prompt.new(enable_color: true)
  user_pokemons = user.pokemons.map(&:name)
  puts "#{user.username.capitalize} - What pokemon do you want to pick?"
  user_pokemons.each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon}"}
  prompt.mask('Choose 1-3') do |i|
    i.validate(/[1-3]/)
  end
end
