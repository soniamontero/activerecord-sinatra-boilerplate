require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  restaurant_id = params[:id]
  @resto = Restaurant.find(restaurant_id)
  erb :show
end

