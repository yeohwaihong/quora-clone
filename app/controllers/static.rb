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

post '/signup' do
  user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  user.save
  redirect '/'
end

# post '/login' do
#   user = User.last
#   user.authenticate

# end
