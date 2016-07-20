 require 'rubygems'
 require 'bundler'
 Bundler.require

# Model
 require './models/strains'

# Controllers
require './controllers/strains.rb'
require './app'



 run Sinatra::Application