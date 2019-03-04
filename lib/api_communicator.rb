def get_moves(pokemon)
  response_string = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{pokemon}/")
  response_hash = JSON.parse(response_string)
  moves = response_hash['moves']
  move_list = {}
  moves.each do |move|
    move_list[move['move']['name']] = move['version_group_details'][0]['level_learned_at']
  end
  binding.pry
end
