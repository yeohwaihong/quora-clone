patch '/questions/:id/edit' do
	@question = Question.find(params[:id])
  	@question.content = params[:edit_input]
  	@question.save
  	redirect to "/"
end

delete '/questions/:id/delete' do #delete action
  @question = Question.find(params[:id])
  @question.delete
  redirect to "/"
end
