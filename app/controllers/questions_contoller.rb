# get '/question' do
#   @user = User.find(session["user_id"])
#   @question = Question.where(user_id: session["user_id"])
#   @answer = Answer.where(user_id: session["user_id"])
#   erb :"users/question"
# end

get '/question/:id' do
  @question = Question.find(params[:id])
  # @answer = Answer.where(user_id: session["user_id"])
  erb :"users/question"
  # redirect "/question/#{@question.id}"
end

post '/ask_question' do
  question = Question.new(user_id: session[:user_id], content: params[:question])
  if question.save
    redirect '/profile'
  else
    redirect '/profile'
  end
end


patch '/questions/:id/edit' do
	@question = Question.find(params[:id])
  	@question.content = params[:edit_input]
  	@question.save
  	redirect to "/question/#{@question.id}"
end

delete '/questions/:id/delete' do #delete action
  @question = Question.find(params[:id])
  @question.delete
  redirect to "/question"
end
