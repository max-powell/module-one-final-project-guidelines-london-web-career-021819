require 'csv'

csv_data = CSV.read("pokemon_stats.csv", {encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all})

hashed_data = csv_data.map {|d| d.to_hash}

hashed_data.each do |row|
Pokemon.create(name: row[])



CSV.parse(csv_data, headers: true) do |row|
  Pokemon.create

  Pokemon.create(name: 'Pikachu', pokemon_type: 'electric', hp: 95, attack: 54, defence: 31)




  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.integer :hp
      t.integer :attack
      t.integer :defence
    end
  end
