class User < ActiveRecord::Base
  has_many :battle_packs
  has_many :pokemons, through: :battle_packs
end
