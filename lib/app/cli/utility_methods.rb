def show_battlepack(user)
  pokemon_selected = user.pokemons.map(&:name)
  pokemon_list_formatter(pokemon_selected)
end


def pokemon_list_formatter(list)
  list.each_with_index {|name, index| puts "#{index+1}. #{name}"}
end


def gets_selection_index(list)
  input = STDIN.gets.chomp.to_i
  if (1..list.length).include?(input)
    input-1
  else
    puts "Invalid selection"
    gets_selection_index(list)
  end
end
