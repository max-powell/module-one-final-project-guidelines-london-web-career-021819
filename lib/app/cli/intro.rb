#### welcome greeting and prompt user to enter username.
def welcome
  system('clear')
  sleep(2)
  Catpix.print_image('lib/images/pokemon_logo.png')
  puts "\nWelcome to the world of Pokemon!"
end

def gets_username
  prompt = TTY::Prompt.new
  prompt.ask('What is your name, poke-trainer?', required: true)
end

#### check whether the user exists in the db.
def existing_user_outcome(username)
  system('clear')
  if existing_user?(username)
    existing_user(username)
  else
    new_user(username)
  end
end

def existing_user?(username)
  User.exists?(username:username)
end
