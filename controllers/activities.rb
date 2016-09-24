class CannaViews < Sinatra::Base
	use Rack::MethodOverride
 

# General route action
 get '/' do 
 	erb :index
 end
get '/layout' do 
 	erb :layout
 end
 # RESTful Controller Actions
# INDEX
 get '/activities' do 
 	@activities=Activity.all 
 	puts @activities
 	erb(:"activities/index")
 
 end
 # NEW 
 get '/activities/new' do
 	@activity=Activity.new
 	erb(:"activities/new")
 end
 # CREATE 
 post '/activities' do 
 	@activity=Activity.new(params[:activity])
 	if @activity.save
 		redirect("/activities/#{@activity.id}")
 	else
 		erb(:"activities/new")
 	end  	
 end
 # SHOW
 get '/activities/:id' do 
 	@activity=Activity.find(params[:id])
 	erb(:"activities/show")
 end
 # EDIT
get '/activities/:id/edit' do
	@activity=Activity.find(params[:id])
	erb(:"activities/edit")
end
# UPDATE
put '/activities/:id' do
	@activity=Activity.find(params[:id])
	if @activity.update_attributes(params[:activity])
		redirect("/activities/#{@activity.id}")
	else 
		erb(:"activities/edit")
end
end

# DELETE
delete '/activities/:id' do 
	@activity=Activity.find(params[:id])
	if @activity.destroy
		redirect('/activities')
	else
		redirect("/activities/#{@activity.id}")
	end
	end
end
