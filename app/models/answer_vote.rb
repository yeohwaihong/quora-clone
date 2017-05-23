class AnswerVote < ActiveRecord::Base
belongs_to :user
belongs_to :answer
has_many :answers

end
