# create -new action for the sesison
get '/login' do
  erb :"users/login"
end

#create - create action for the session
post '/login' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session["user_id"] = user.id
    redirect '/profile' #read- show action for the user
  else
    redirect '/login'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/login'
end
