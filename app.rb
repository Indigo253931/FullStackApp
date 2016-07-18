 require 'sinatra'
 require 'active_record' 
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
# require './config/envrionments'
# require './models/model'

 get '/' do 
 	"Hello World!"
 	#erb :index
 end
