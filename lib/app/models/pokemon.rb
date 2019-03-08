class Pokemon < ActiveRecord::Base
  has_many :battle_packs
  has_many :movesets
  has_many :users, through: :battle_packs
  has_many :moves, through: :movesets

  def attack_target(move, target)
    if rand(0..100) < move.accuracy
      hit(move, target)
    else
      move.pp -= 1
      puts "It missed!!"
    end
  end

  def hit(move, target)
    damage = damage_calc(move, target)
    new_hp = target.hp - damage
    puts "\nIt did #{damage} damage!"
    if new_hp < 0
      target.hp = 0
    else
      target.hp = new_hp
      move.pp -= 1 if move.pp > 0
    end
  end

  def damage_calc(move, target)
    if (target.pokemon_type.split & move.effective_against.split).any?
      mod = 2 * rand(0.9..1)
      puts "It's super effective!!!"
    elsif (target.pokemon_type.split & move.not_effective_against.split).any?
      mod = 0.5 * rand(1..1.1)
      puts "It's not very effective..."
    else
      mod = 1 * rand(0.95..1.05)
    end
    ((((22 * move.power * (self.attack.to_f/target.defence))/50.0) + 2) * mod).round
  end
end
