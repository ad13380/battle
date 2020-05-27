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
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
