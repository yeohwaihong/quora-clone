class DropTableAndAddAgain < ActiveRecord::Migration[4.2]
	def change
    drop_table :answers
		create_table :answers do |t|
			t.string :answer
			t.belongs_to :user
			t.belongs_to :question
			t.timestamps
		end
	end
end
