class QuestionVote < ActiveRecord::Base
belongs_to :user
belongs_to :question
has_many :questions


end