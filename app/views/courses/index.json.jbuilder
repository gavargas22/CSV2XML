json.array!(@courses) do |course|
  json.extract! course, :id, :term, :title, :college, :level, :crn, :department
  json.url course_url(course, format: :json)
end
