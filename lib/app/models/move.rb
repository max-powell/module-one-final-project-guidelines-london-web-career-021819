class Move < ActiveRecord::Base
  has_many :movesets
  has_many :pokemons, through: :movesets
end
