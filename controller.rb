require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

require_relative('./models/films')
also_reload('./models/*')


get '/index' do
  erb(:index)
end

get '/about_us' do
  erb(:about_us)
end

get '/film' do
  @films = Film.all
  erb(:film)
end

get '/frozen' do
  erb(:frozen)
end

get '/jumanji' do
  erb(:jumanji)
end

get '/star_wars' do
  erb(:star_wars)
end

get '/maleficent' do
  erb(:maleficent)
end
