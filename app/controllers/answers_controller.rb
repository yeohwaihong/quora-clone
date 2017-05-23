post '/answer_question/:id' do
  @question = Question.find_by_id(params[:id])
  answer = Answer.new(question_id: params[:id], user_id: session[:user_id], answer: params[:answer])
  if answer.save
    redirect "/question/#{@question.id}"
  else
    redirect '/profile'
  end
end
