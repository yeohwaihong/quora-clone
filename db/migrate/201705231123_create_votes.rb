class CreateVotes < ActiveRecord::Migration[4.2]
	def change
		create_table :votes do |t|
    t.integer :count
		t.references :question
		t.references :user
		t.timestamps
  end
	end
end
