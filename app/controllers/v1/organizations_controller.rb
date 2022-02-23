class V1::OrganizationsController < ApplicationController

	# before_action :current_account

	def index
		@organizations = current_account.organizations.all
		render json: @organizations, status: :ok  

	end

	def create
		@organization = current_account.organizations.new(org_params)
		# debugger
		if @organization.save
			render json: :Organization_Created, status: :ok
		else
			render json: {error: "unprocessible_Entity"}, status: :unauthorized
		end
	end
	# def create
	# 	# debugger
	# 	@user = User.where(email: params[:email]).first
	# 	current_user = @user
	# 	debugger
	# 	if @user&.valid_password?(params[:password])
	# 		render :create, status: :created
	# 	else
	# 		render json: {error: 'invalid credentials'}, status: :unauthorized
	# 	end
	# end

	# def destroy

	# end
	private
	def org_params
		params.require(:organization).permit(:name, :address, :tax_payer_number, :account_id)
	end

	

end