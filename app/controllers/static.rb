get '/' do
  if session[:user_id].nil?
    erb :"users/new"
  else
    erb :"static/index"
  end
end
