json.data do 
	json.contact do 
		json.call(
			@contact,
			:first_name,
			:last_name,
			:email,
			:organization_id
		)
	end
end