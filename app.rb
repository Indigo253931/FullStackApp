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

end