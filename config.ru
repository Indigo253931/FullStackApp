 require 'rubygems'
 require 'bundler'
 Bundler.require

require './app'

# Model
 require './models/strains'
 require './models/activities'

# Controllers
require './controllers/strains.rb'
require './controllers/activities.rb'



 run CannaViews