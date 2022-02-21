module V1
	module Contacts
		module Response
			extend	 ActiveSupport::Concern

			def create_and_render_contact(contact)

				contact.save! &&
				 render( :create, status: :created)
				 # render json: @contact.as_json, status: :created
			end

			def render_invalide_response
				head(:unprocessable_entity)
			end
		end
	end
end