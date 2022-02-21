class V1::SessionsController < ApplicationController
	def create
		# debugger
		@user = User.where(email: params[:email]).first
		if @user&.valid_password?(params[:password])

			render :create, status: :created
		else
			render json: {error: 'invalid credentials'}, status: :unauthorized
		end
	end

	def destroy

	end

end