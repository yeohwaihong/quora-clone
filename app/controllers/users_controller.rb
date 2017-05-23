require 'byebug'

#create - new action
get '/new' do
    @question = Question.find_by(session["user_id"])
    erb :"users/new"
end

#create - create action
post '/signup' do
  user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  user.save
  redirect '/login'
end


# READ-show action (displaying a specific user)
get '/profile' do
  @user = User.find(session["user_id"])
  @question = Question.where(user_id: session["user_id"])
  @answer = Answer.where(user_id: session["user_id"])
  erb :"users/show"
end

get '/read_questions' do
  @user = User.find(session["user_id"])
  # @question = Question.where(user_id: session["user_id"])
  # @answer = Answer.where(user_id: session["user_id"])
  erb :"users/read_questions"
end

get '/read_answers' do
  @user = User.find(session["user_id"])
  @question = Question.where(user_id: session["user_id"])
  @answer = Answer.where(user_id: session["user_id"])
  erb :"users/read_answers"
end
