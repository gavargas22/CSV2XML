class CreateCourses < ActiveRecord::Migration
	def change
		create_table :courses do |t|
			t.string :school_term
			t.string :title
			t.string :college
			t.string :level
			t.string :crn
			t.string :department

			t.timestamps null: false
		end
	end
end
