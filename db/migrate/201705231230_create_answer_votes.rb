class CreateAnswerVotes < ActiveRecord::Migration[4.2]
	def change
		create_table :answer_votes do |t|
    t.integer :count
		t.belongs_to :answer
		t.belongs_to :user
		t.timestamps
  end
	end
end
