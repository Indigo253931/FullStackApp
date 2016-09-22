 require 'rubygems'
 require 'bundler'
 Bundler.require

require './app'

# Model
 require './models/strains'
 require './models/activities'
require './models/users.rb'
require './models/playlists.rb'

# Controllers
require './controllers/strains.rb'
require './controllers/activities.rb'
require './controllers/users.rb'
require './controllers/playlists.rb'

 run CannaViews