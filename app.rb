# require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @display_text = "home"
  erb :index
end

get '/entries?' do
  @display_text = "entries"
  erb :index
end

get '/entries/:id' do
  @display_text = "entries " + params[:id]
  erb :index
end

put '/entries/:id' do
  @display_text = "entries " + params[:id]
  redirect 'entries/3'
end