# FullStackApp

Heroku: https://slack-redir.net/link?url=https%3A%2F%2Fblooming-bastion-82823.herokuapp.com%2Fstrains

Trello: https://trello.com/b/4pKjpKsB/project-2-a-full-stack-application

Wireframes: https://github.com/Indigo253931/FullStackApp/tree/master/Wireframes




App description: 

My app allows users to create cannabis strains and update the rating, review, image, and details for each one. 
Users also have the ability to read and delete any posted content. 

CannaViews is made for the user to both document their personal experience with any strain, as well analyze the reviews and information made available through the submissions made by other users. 



4 RESTful routes: 

GET:  Users can view all strains and their details.

POST: Users can  create strains and include details.

PUT: Users can update their strains and their details.

DELETE: Users can delete their strains.



Technologies used: 

-HTML as the boiler plate

-CSS for styling

-ERB: Use Embedded RuBy to generate text from templates. The templates combine plain text with Ruby code for variable substitution and flow control. Templates are to be kept in the folder 'views'.

-SQL

-ActiveRecord for database table structure and interaction with relationally-stored data.



Installation instructions:

1. Create a Gemfile by running 'bundle init'. 
Inside the file, include the following: 

source "https://rubygems.org"
gem "sinatra"
gem 'rerun'

Then run the command 'bundle install' or 'bundle'.


2. Create a 'config.ru' file to configure the Rack server. and inside include the following: 

ruby
require 'rubygems'
require 'bundler'
Bundler.require
require './app'
run App


3. Create a file named app.rb and inside include the following: 
ruby
class App < Sinatra::Base
end

