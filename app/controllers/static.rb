get '/' do
  if session[:user_id].nil?
    erb :"users/new"
  else
    redirect "/profile"
  end
end
