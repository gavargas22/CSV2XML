xml.instruct!
xml.courses do
	@courses.each do |course|
		xml.course do
			xml.school_term course.school_term
			xml.title course.title
			xml.college course.college
			xml.level course.level
			xml.crn course.crn
			xml.department course.department

		end
	end
end
