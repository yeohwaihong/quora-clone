require 'byebug'

get '/' do
  erb :"users/new"
end

get '/new' do
  erb :"users/new"
end

get '/login' do
  erb :"users/login"
end
