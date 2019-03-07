def generate_screen(left, right)
  terminal_width = IO.console.winsize[1]

  # right pokemon
  right_health_bar = health_bar(right.pokemon.hp, right.pokemon.starting_hp)
  Catpix.print_image("lib/images/pikachu-f.png", limit_y: 0.4, center_x: true)
  puts "#{left.pokemon.name}".rjust(terminal_width/2)
  puts "hp:#{left.pokemon.hp}/90".rjust(terminal_width/2)
  puts right_health_bar.rjust(terminal_width/2)

  # left pokemon
  left_health_bar = health_bar(left.pokemon.hp, left.pokemon.starting_hp)
  Catpix.print_image("lib/images/pikachu-f.png", limit_y: 0.4)
  puts "Pikachu\nhp:90/90\n#{left_health_bar}\n"
  puts '-' * terminal_width
end

def health_bar(current_hp, starting_hp)
  filled = health(current_hp, starting_hp)/5
  empty = 20 - filled
  binding.pry
  puts "[#{'=' * filled}#{' ' * empty}]"
end

def health(current_hp, starting_hp)
  health = (current_hp.to_f/starting_hp)*100
  if health % 5 > 0
    health -= health % 5
    health += 5
  end
end
