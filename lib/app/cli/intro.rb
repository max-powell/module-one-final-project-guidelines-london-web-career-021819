
#### welcome greeting and prompt user to enter username.
def welcome
  puts "Welcome to the world of Pokemon!"
end

def gets_username
  puts "What is your name poke-trainer?"
  username = STDIN.gets.chomp
end

#### check whether the user exists in the db.
def existing_user_outcome(username)
  if existing_user?(username)
    existing_user(username)
  else
    new_user(username)
  end
end

def existing_user?(username)
  User.exists?(username:username)
end
