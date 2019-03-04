class Pokemon < ActiveRecord::Base
  has_many :battle_packs
  has_many :movesets
  has_many :users, through: :battle_packs
  has_many :moves, through: :movesets
end
