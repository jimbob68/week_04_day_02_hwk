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
