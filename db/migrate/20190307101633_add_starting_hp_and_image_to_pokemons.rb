class AddStartingHpAndImageToPokemons < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :starting_hp, :integer
    add_column :pokemons, :image, :string
  end
end
