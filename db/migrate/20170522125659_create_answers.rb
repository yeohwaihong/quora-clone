class CreateAnswers < ActiveRecord::Migration[4.2]
	def change
		create_table :answers do |t|
			t.string :answer
			t.belongs_to :user
			t.belongs_to :question
			t.timestamps
		end
	end
end
