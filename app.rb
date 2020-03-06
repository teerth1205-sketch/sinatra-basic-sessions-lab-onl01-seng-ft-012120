require_relative 'config/environment'

class App < Sinatra::Base

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do 
  erb :index
end 

post '/checkout' do 
  @sessions = session
  session["item"] = params["item"]
 
  
  erb :checkout 
end 
end