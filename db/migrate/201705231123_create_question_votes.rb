class CreateQuestionVotes < ActiveRecord::Migration[4.2]
	def change
		create_table :question_votes do |t|
    t.integer :count
		t.belongs_to :question
		t.belongs_to :user
		t.timestamps
  end
	end
end
