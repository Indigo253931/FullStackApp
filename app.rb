 class CannaViews < Sinatra::Base
use Rack::MethodOverride
 # General route action
 get '/' do 
 	erb :index
 end

get '/layout' do 
 	erb :layout
 end

 # RESTful Strain Controller Actions

# INDEX
 get '/strains' do 
 	@strains = Strain.all 
 	erb(:"strains/index")
 end

# Return a collection with all strains
#strains = Strain.all

 # NEW
 get '/strains/new' do
 	@strain = Strain.new
 	erb(:"strains/new")
 end

 # CREATE
 post '/strains' do 
 	@strain = Strain.new(params[:strain])
 	if @strain.save
 		redirect("/strains/#{@strain.id}")
 	else
 		erb(:"strains/new")
 	end  	
 end
	
# Create and save a new strain
#StrwNghtmre = Strain.create(name: "Strawberryy Nightmare", rating: "4", review: "Best for daytime use, a favorite fruity strain")

 # SHOW
 get '/strains/:id' do 
 	@strain = Strain.find(params[:id])
 	erb(:"strains/show")
 end

 # EDIT
get '/strains/:id/edit' do
	@strain = Strain.find(params[:id])
	erb(:"strains/edit")
end

# UPDATE
put '/strains/:id' do
	@strain = Strain.find(params[:id])
	if @strain.update_attributes(params[:strain])
	redirect("/strains/#{@strain.id}")
else 
	erb(:"strains/edit")
end
end

# Return first strain named Strawberrry Nightmare
#strain = Strain.find_by(name: 'Strawberrry Nightmare')
#strain.update(name: 'Strawberry Nightmare')

# DELETE
delete '/strains/:id' do 
	@strain = Strain.find(params[:id])
	if @strain.destroy
	redirect('/strains')
else
	redirect("/strains/#{@strain.id}")
end
end

# Use hash mapping attribute to modify & save to database
#strain = Strain.find_by(name: '')
#strain.delete

end

#STRAINS
#class Strain
#def initialize (name, type, rating, review)
#	@strain_type = type
#	@strain_rating = rating
#	@strain_review = review
#end
#def details()
#	puts "Strain name #@strain_name"
#	puts "Strain type #@strain_type"
#	puts "Strain rating #@strain_rating"
#	puts "Strain review #@strain_review"
#end
#end



