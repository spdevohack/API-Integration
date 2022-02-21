class V1::ContactsController < ApplicationController
	include V1::Contacts::Response
	def index
		@contacts = Contact.all
		render json: @contacts, status: :ok  
	end

	def create 
		# debugger
		@contact = Contact.new(contact_params)

		create_and_render_contact(@contact) || render_invalide_response
		# if @contact.save!
		# 	render json: @contact, status: :created
		# else
		# 	head(:unprocessable_entity)
		# end		
	end

	def destroy
		@contact = Contact.find(params[:id])
		if @contact.destroy
			head(:ok)
		else
			head(:unprocessable_entity)
		end
	end

	private
	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email, :organization_id, :user_id)
	end
end
