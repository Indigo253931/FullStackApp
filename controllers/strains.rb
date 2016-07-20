

#STRAINS

# index
 get '/strains' do 
 	@strains = Strain.all 
 	erb(:"strains/index")
 end

 # new
 get '/strains/new' do
 	@strain = Strain.new
 	erb(:"strains/new")
 end

 # create
 post '/strains' do 
 	@strain = Strain.new(params[:strain])
 	if @strain.save
 		redirect("/strains/#{@strain.id}")
 	else
 		erb(:"strains/new")
 	end
 end

  # show
 get '/strains/:id' do 
 	@strain = Strain.find(params[:id])
 	erb(:"strains/show")
 end

 # edit
get '/strains/:id/edit' do
	@strain = Strain.find(params[:id])
	erb(:"strains/edit")
end

# update
put '/strains/:id' do 
	@strain = Strain.find(params[:id])
	if @strain.update_attributes(params[:strain])
	redirect("/strains/#{@strain.id}")
else 
	erb(:"strains/edit")
end
end

# delete
delete '/strains/:id' do 
	@strain = Strain.find(params[:id])
	if @strain.destroy
	redirect('/strains')
else
	redirect("/strains/#{@strain.id}")
end
end

