class Person < ActiveRecord::Base
	require 'roo'

	# Get Values from the CSV
	def self.get_values_from_csv
		directory = "./public/csv/"
		# Get an array with all the files in the folder
		files = Dir.entries(directory)
		# Clean up the files that are not being use like DS_Store and other crap
		files.delete(".") && files.delete("..") && files.delete(".DS_Store")
		# For each file, open it and parse the object in it and put them in the local database for conversion later.
		files.each do |file|
			spreadsheet = Roo::Spreadsheet.open("#{directory}#{file}", extension: :csv)
			# Get the header
			header = spreadsheet.row(1)
			# Starting from two onwards do the parsing operation
			(2..spreadsheet.last_row).each do |s|
				row = Hash[[header, spreadsheet.row(s)].transpose]
				row.delete_if { |k, v| k.nil? }
				person = Person.find_by(id: row["record_id"])
				person = Person.new
				person.attributes =  row.to_hash.slice(*row.to_hash.keys)
				person.save!
			end
		end

	end
end
