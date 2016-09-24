 class CannaViews < Sinatra::Base
use Rack::MethodOverride


# Root and layout routes
 get '/' do 
 	erb :index
 end

get '/layout' do 
 	erb :layout
 end

get '/about' do 
 	erb :about
 end

 get '/search/:keyword' do 
 	@strain = Strain.find(params[:keyword])
 	@activity = Activity.find(params[:keyword])
 	@playlist = Playlist.find(params[:keyword])
 end

get '/helloworld' do
  session["value"] ||= "Hello world!"
  "The cookie you've created contains the value: #{session["value"]}"
end

end
# string interpolation, erb and quotes vs colons, redirect