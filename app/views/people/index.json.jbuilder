json.array!(@people) do |person|
	json.extract! person, :id, :name, :lastname, :title, :phone, :email, :record_id
	json.url person_url(person, format: :json)
end
