json.data do 
	json.contact do 
		json.first_name @contact.first_name
		json.last_name	@contact.last_name
		json.email     @contact.email 
		json.organization_id @contact.organization_id
		json.user_id @contact.user_id

	end
end