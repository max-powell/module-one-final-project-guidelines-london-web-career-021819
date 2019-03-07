require_relative '../config/environment'
require 'catpix'
require 'thread'


thread_1 = Thread.new do
  play_music
end


thread_2 = Thread.new do
  welcome
  username = gets_username.downcase
  existing_user_outcome(username)
  music_loop = false
  system("ps -a | grep afplay | awk '{print $1}' | xargs kill -9 ")
end

thread_2.join
thread_1.join

"end"
