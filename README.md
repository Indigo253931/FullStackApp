# FullStackApp
Project 2

App description: My app will allow users to create, read, update and delete ratings and reviews for cannabis strains.


4 routes: 

GET:  Users will be able to view all ratings and reviews

POST: Users will be able post a rating and review 

PUT: Users will be able to update their ratings reviews

DELETE: Users will be able to delete their ratings and reviews

Trello board: https://trello.com/b/4pKjpKsB/project-2-a-full-stack-application

Wireframes: https://github.com/Indigo253931/FullStackApp/tree/master/Wireframes

Technologies used: 

-HTML

-CSS

-ERB: Use Embedded RuBy to generate text from templates. The templates combine plain text with Ruby code for variable substitution and flow control. Templates are to be kept in the folder 'views'.

-SQL

-ActiveRecord (for database table structure and interaction with relationally-stored data).


Approach taken:


Front-end: 


Back-end: 

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

Unsolved problems:

