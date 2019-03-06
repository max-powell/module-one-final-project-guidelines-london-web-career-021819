require_relative '../config/environment'
require 'catpix'

welcome
username = gets_username.downcase
existing_user_outcome(username)

#binding.pry

"end"
