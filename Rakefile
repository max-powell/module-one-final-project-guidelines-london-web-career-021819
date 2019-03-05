require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

desc 'destroy all table data'
task :destroy_all do
  User.destroy_all
  Pokemon.destroy_all
  Move.destroy_all
  BattlePack.destroy_all
  Moveset.destroy_all
end
