class CreatePeople < ActiveRecord::Migration
	def change
		create_table :people do |t|
			t.string :name
			t.string :lastname
			t.string :title
			t.integer :phone
			t.string :email
			t.string :photo
			t.string :denomination
			t.string :record_id

			t.timestamps null: false
		end
	end
end
