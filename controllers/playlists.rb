 class CannaViews < Sinatra::Base
use Rack::MethodOverride

 # RESTful Playlist Controller Actions

# INDEX
 get '/playlists' do 
	@playlists = Playlist.all
 	erb(:"playlists/index")
 end
 
 # NEW 
 get '/playlists/new' do
 	@playlist = Playlist.new
 	erb(:"playlists/new")
 end

 # CREATE 
 post '/playlists' do 
 	@playlist = Playlist.new(params[:playlist])
 	if @playlist.save
 		redirect("/playlists/#{@playlist.id}")
 	else
 		erb(:"playlists/new")
 	end  	
 end
 # SHOW
 get '/playlists/:id' do 
 	@playlist = Playlist.find(params[:id])
 	erb(:"playlists/show")
 end

 # EDIT
get '/playlists/:id/edit' do
	@playlist = Playlist.find(params[:id])
	erb(:"playlists/edit")
end

# UPDATE
put '/playlists/:id' do
	@playlist = Playlist.find(params[:id])
	if @playlist.update_attributes(params[:playlist])
	redirect("/playlists/#{@playlist.id}")
else 
	erb(:"playlists/edit")
end
end
# DELETE
delete '/playlists/:id' do 
	@playlist = Playlist.find(params[:id])
	if @playlist.destroy
	redirect('/playlists')
else
	redirect("/playlists/#{@playlist.id}")
end
end
end