# FullStackApp
Project 2

App description: My app allows users to CRUD cannabis strains in addition to ratings and reviews.


4 routes: 

GET:  Users can view all strains, ratings and reviews.

POST: Users can post a strain, rating and review.

PUT: Users can update their strains, ratings reviews.

DELETE: Users can delete their strains, ratings and reviews.

Trello board: https://trello.com/b/4pKjpKsB/project-2-a-full-stack-application

Wireframes: https://github.com/Indigo253931/FullStackApp/tree/master/Wireframes

Technologies used: 

-HTML as the boiler plate

-CSS to add styling

-ERB: Use Embedded RuBy to generate text from templates. The templates combine plain text with Ruby code for variable substitution and flow control. Templates are to be kept in the folder 'views'.

-SQL

-ActiveRecord for database table structure and interaction with relationally-stored data.


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

