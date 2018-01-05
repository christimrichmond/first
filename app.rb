require "sinatra"

get '/' do 
	erb :index
end

post '/order' do
    sides = params[:sides]
    sandwich = params[:sandwich]
    redirect '/order?sandwich=' + sandwich + '&sides=' + sides
end

get '/order' do
  sandwich = params[:sandwich]
  sides = params[:sides]
  erb :order, :locals => {:sandwich => sandwich, :sides => sides}
end