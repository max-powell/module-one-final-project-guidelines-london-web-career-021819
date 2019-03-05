def existing_user(username)
  user_instance = User.find_by(username: username)
  welcome_back_message(username)
  menu_choice = menu
  existing_user_menu_action(menu_choice, user_instance)
end

def welcome_back_message(username)
  puts "Welcome back #{username}!"
end

def menu
  existing_user_menu
  input = STDIN.gets.chomp
  if input == "1" || input == "2"
    input
  else
    puts "Invalid selection"
    menu
  end
end

def existing_user_menu
  puts "What would you like to do? Enter '1' if you want to view your battlepack or '2' if you want to battle."
end

def existing_user_menu_action(menu_choice, user_instance)
  if menu_choice == "1"
    puts "Here's your battlepack"
    show_battlepack(user_instance)
  else
    puts "2. in dev"
  end
end
