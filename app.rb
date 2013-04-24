require 'sinatra/reloader' if developement?

get '/' do
  erb :index
end

get '/entries?' do
  erb :index
end

get '/entries/:id' do
  erb :index
end

put '/entries/:id' do
  redirect 'entries/3'
end