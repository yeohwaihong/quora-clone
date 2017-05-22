class Question < ActiveRecord::Base
validates :content, presence: true
belongs_to :user
# dependant: :destroy
has_many :answers

end
