class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.integer :hp
      t.integer :attack
      t.integer :defence
    end
  end
end
