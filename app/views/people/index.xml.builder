xml.instruct!
xml.people do
	@people.each do |person|
		xml.person do
			xml.name person.name
			xml.lastname person.lastname
			xml.title person.title
			xml.phone person.phone
			xml.email person.email
		end
	end
end
