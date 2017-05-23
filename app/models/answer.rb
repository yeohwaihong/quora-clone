class Answer < ActiveRecord::Base
validates :answer, presence: true
belongs_to :user
belongs_to :question
has_many :questions
has_many :answer_votes

end
