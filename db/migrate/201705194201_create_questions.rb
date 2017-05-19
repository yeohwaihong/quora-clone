class CreateQuestions < ActiveRecord::Migration[4.2]
	def change
		create_table :questions do |t|
			t.string :content
			t.belongs_to :user
			t.timestampss
		end
	end
end
