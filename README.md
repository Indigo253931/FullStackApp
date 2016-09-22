* bundle exec
* config.ru
* rake db:create_migration NAME=<your_migration_name>




Ideas for features, layout and design

-search bar
-sensory visuals
(smoke, giph, fire, eyes, laughing, smiling, growth, nature, )

********** Heroku **********

	https://slack-redir.net/link?url=https%3A%2F%2Fblooming-bastion-82823.herokuapp.com%2Fstrains

********** Trello **********

	https://trello.com/b/4pKjpKsB/project-2-a-full-stack-application

********** Wireframes **********

	https://github.com/Indigo253931/FullStackApp/tree/master/Wireframes

About 

	HydraAtleta  - a cannabis community and review app developed for those who enjoy althletic activities in addition to cannabis for med/rec use. Users can both document their personal experience with any strain, as well analyze other submissions.

	Stretch goal: (Implement API data)

	Refresh with these head highs

		From skiing, weight training and triathlons to yoga, scuba-diving and dance, HydraAtleta supports any activty that gets you moving.

 	Sample the product, submit a review and share your experiences with any cannabis strain. 
 		HydraAtleta makes it easy to track your favorites, add to your wish list and organize based off activity.
 		You can easily delete or make changes to them at any time.
	
	Browse, filter and search through the menu based off strain attributes, activity, date submitted and/or community ranking.

	Attend local events.
		Opt in to recieve updates about upcoming events in your area.

	Host a meetup. 


****************** Technologies ******************

A full-stack review application with RESTful routes using HTML5, CSS, erb, Ruby on Rails and ActiveRecord. 

	********* Structured Query Language *********
	 SQL is a language used and adapted to interact with relational dbs. When you use a SQL client and connect to a relational db that contains tables with data, using SQL commands you can:
		* Insert data
		* Query or retrieve data
		* Update or delete data
		* Create new tables and entire databases
		* Control permissions of who can have access to our data

		All these actions depend on what the db admin. sets for user permissions

	********* HTML *********
		
		* Boiler plate

	********* CSS *********


	********* ERB (Embedded RuBy) *********

	Generate text from templates. 
	The templates combine plain text with Ruby code for variable substitution and flow control. Templates are to be kept in the folder 'views'.
	
	<%= %>  to render
	<% %> ruby tags in ERB


	********* ActiveRecord ORM Framework (M in MVC) *********

	*Ruby library that works with SQL to translate SQL language to user friendly ruby methods

	* Interaction with relationally-stored data in a db table structure using declarative Ruby instead of imperative SQL.

	* Respresents buisness and data logic

	* Facilitates creation and use of business objects whose data requires persistent storage to a db

	* Implementation of the AR pattern, a description of an Object Relational Mapping system

		AR Pattern - objects carry both persistent data and behavior which operates on that data. 
		Takes opinion that ensuring data access logic as part of the object will educate users (of that object) on how to write to and read from the db.

		ORM - the properties and relationships of objects in an application can be easily stored and retrieved from a db without writing SQL statements directly and with less overall db access code.

	* AR provides ability to:

		Represent models and their data.
		Represent associations between these models.
		Represent inheritance hierarchies through related models.
		Validate models before they get persisted to the database.
		Perform database operations in an object-oriented fashion.


Installation instructions:

	1. Run'bundle init' to create a Gemfile.  
		Include: 
			source "https://rubygems.org"
			gem "sinatra"
			gem 'rerun'

	Run 'bundle install' or 'bundle'.


2. Create a 'config.ru' file to configure the Rack server to provide basic web server functionality. 

	Include: 
		ruby
		require 'rubygems'
		require 'bundler'
		Bundler.require
		require './app'
		run App

3. Create file app.rb and include: 
		ruby
		class App < Sinatra::Base
		end

4. Run 'rackup' to bring up the app.
