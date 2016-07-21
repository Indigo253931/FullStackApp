#STRAINS

# GET ALL STRAINS
 get '/strains' do 
 	@strains = Strain.all 
 	erb(:"strains/index")
 end

 # GET NEW STRAIN
 get '/strains/new' do
 	@strain = Strain.new
 	erb(:"strains/new")
 end

 # CREATE/POST STRAIN
 post '/strains' do 
 	@strain = Strain.new(params[:strain])
 	if @strain.save
 		redirect("/strains/#{@strain.id}")
 	else
 		erb(:"strains/new")
 	end
 end

  # GET/SHOW STRAIN
 get '/strains/:id' do 
 	@strain = Strain.find(params[:id])
 	erb(:"strains/show")
 end

 # EDIT STRAIN
get '/strains/:id/edit' do
	@strain = Strain.find(params[:id])
	erb(:"strains/edit")
end

# UPDATE/PUT STRAIN
put '/strains/:id' do 
	@strain = Strain.find(params[:id])
	if @strain.update_attributes(params[:strain])
	redirect("/strains/#{@strain.id}")
else 
	erb(:"strains/edit")
end
end

# DELETE
delete '/strains/:id' do 
	@strain = Strain.find(params[:id])
	if @strain.destroy
	redirect('/strains')
else
	redirect("/strains/#{@strain.id}")
end
end

