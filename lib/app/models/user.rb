class User < ActiveRecord::Base
  has_many :battle_packs
  has_many :pokemons, through: :battle_packs

  def win_ratio
    if self.losses == 0
      0
    else
      self.wins/(self.losses.to_f)
    end
  end
end
