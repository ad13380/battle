require 'sinatra'
require 'shotgun'

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret Message!!"
end

get '/name' do
  "Anthony"
end

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  erb :index
end

get '/form-cat' do
  erb :formcat
end
