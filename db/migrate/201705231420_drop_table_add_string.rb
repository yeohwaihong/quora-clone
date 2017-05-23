class DropTableAddString < ActiveRecord::Migration[4.2]
	def change
    drop_table :question_votes
    drop_table :answer_votes
		create_table :question_votes do |t|
			t.string :value
			t.belongs_to :user
			t.belongs_to :question
			t.timestamps
		end
    create_table :answer_votes do |t|
			t.string :value
			t.belongs_to :user
			t.belongs_to :answer
			t.timestamps
    end
	end
end
