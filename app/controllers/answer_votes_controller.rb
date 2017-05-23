post '/answer/:id/vote' do

@answer = Answer.find(params[:id])
arr = []
avote = AnswerVote.new(value: 'up', user_id: session[:user_id], answer_id: params[:id])
AnswerVote.where(answer_id: params[:id], value: 'up').each do |x|
    arr << x.user_id
end
if arr.include?(session[:user_id])
else
    avote.save
end

redirect back
end

post '/answer/:id/downvote' do

@answer = Answer.find(params[:id])
arr = []
avote = AnswerVote.new(value: 'down', user_id: session[:user_id], answer_id: params[:id])
AnswerVote.where(answer_id: params[:id], value: 'down').each do |x|
    arr << x.user_id
end
if arr.include?(session[:user_id])
else
    avote.save
end

redirect back

end
