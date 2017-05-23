post '/question/:id/vote' do

@question = Question.find(params[:id])
arr = []
qvote = QuestionVote.new(value: 'up', user_id: session[:user_id], question_id: params[:id])
QuestionVote.where(question_id: params[:id], value: 'up').each do |x|
    arr << x.user_id
end
if arr.include?(session[:user_id])
else
    qvote.save
end

redirect back
end

post '/question/:id/downvote' do

@question = Question.find(params[:id])
arr = []
qvote = QuestionVote.new(value: 'down', user_id: session[:user_id], question_id: params[:id])
QuestionVote.where(question_id: params[:id], value: 'down').each do |x|
    arr << x.user_id
end
if arr.include?(session[:user_id])
else
    qvote.save
end

redirect back

end
