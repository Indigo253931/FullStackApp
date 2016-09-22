 class CannaViews < Sinatra::Base
use Rack::MethodOverride

 # RESTful User Controller Actions

# INDEX
 get '/users' do 
	@users = User.all
 	erb(:"users/index")
 end
 
 # NEW 
 get '/users/new' do
 	@user = User.new
 	erb(:"users/new")
 end

 # CREATE 

 post '/users' do 
 	@user = User.new(params[:user])
 	if @user.save
 		redirect("/users/#{@user.id}")
 	else
 		erb(:"users/new")
 	end  	
 end
 # SHOW
 get '/users/:id' do 
 	@user = User.find(params[:id])
 	erb(:"users/show")
 end

 # EDIT
get '/users/:id/edit' do
	@user = User.find(params[:id])
	erb(:"users/edit")
end

# UPDATE
put '/users/:id' do
	@user = User.find(params[:id])
	if @user.update_attributes(params[:user])
	redirect("/users/#{@user.id}")
else 
	erb(:"users/edit")
end
end
# DELETE
delete '/users/:id' do 
	@user = User.find(params[:id])
	if @user.destroy
	redirect('/users')
else
	redirect("/users/#{@user.id}")
end
end
end