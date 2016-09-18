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
# Access db data using queries  
	# Return a collection with all strains
		#strains = Strain.all
	# Return first strain
		# strains = Strain.first
	# Return first strain named Kush 
		# strains = find_by(name: 'Kush')
	# Find all strains named Kush that are Indicas 
	# and search by created_at in reverse chronological order
		# strains = Strain.where(name: 'Kush', kind: 'Indica').order(created_at: :desc)

# # Search
# get '/search' do 
# 	@strains = 'all'
# 	@name = params[:search]
# 	@strains = Strain.where("name LIKE ?", "%#{@name}%").order(:name)
# 	erb(":strain/index")
# 	end
 
 # NEW 
 get '/strains/new' do
 	@strain = Strain.new
 	erb(:"strains/new")
 end
#  The new method returns a new object

 # CREATE 

 post '/strains' do 
 	@strain = Strain.new(params[:strain])
 	if @strain.save
 		redirect("/strains/#{@strain.id}")
 	else
 		erb(:"strains/new")
 	end  	
 end
# AR objects can be created from a hash, 
# a block or have their attributes manually set after creation.

	# Calling Strain.new will instantiate a new object
	# Strain.save will commit the record to the db.

	# # In one step, calling the create method 
	# will create and save a new record into the db

		# StrwNghtmre = Strain.create(name: "Strawberryy Nightmare", rating: "4", 
		# review: "Best for daytime use, a favorite fruity strain")

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
# Once retrieved, the attributes on an AR object 
# can be modified and saved to the db by

	# using Strain.find_by(name: 'Kush')
	# Strain.name = ('Blackberry Kush')
	# Strain.save

	# Or shorthand hash mapping attributes to desired value, 
	# allowing you to update several attributes at once
		# strain = Strain.find_by(name: 'Kush')
		# Strain.update(name: 'Blackberry Kush')

	# To update several records in bulk, use
		# Strain.update_all ''

# DELETE
delete '/strains/:id' do 
	@strain = Strain.find(params[:id])
	if @strain.destroy
	redirect('/strains')
else
	redirect("/strains/#{@strain.id}")
end
end
# Once retrieved, an AR object can be destroyed and removed from the db.

# Use hash mapping attribute to modify & save to database
	#strain = Strain.find_by(name: 'Kush')
	#strain.delete
end



# Strain Controller (change name to strains.rb)
# AR automatically creates methods to allow app 
# to read and manipulate data stored in tables.

# 3 ways to create an HTTP response from controller's point of view:

	# Call render to create a full response to send back to the browserCall render 
	# to create a full response to send back to the browser
	
	# Call redirect_to to send an HTTP redirect status code to the browser

	# Call head to create a response consisting solely 
	# of HTTP headers to send back to the browser

# Rails promotes "convention over configuration". 
	# Default rendering is an example of this. 
		# Controllers in Rails default to automatically render views 
		# with names that correspond to valid routes. 
