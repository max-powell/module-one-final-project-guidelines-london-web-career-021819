require_relative '../config/environment'

welcome
username = gets_username.downcase
existing_user_outcome(username)

#binding.pry

"end"
