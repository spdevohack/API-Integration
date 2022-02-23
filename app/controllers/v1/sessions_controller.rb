class V1::SessionsController < ApplicationController
	def create
		@user = User.where(email: params[:email]).first

		# debugger
		if @user.present? && @user.valid_password?(params[:password]) && session[:user_id].nil?
			session[:user_id] = @user.id
			render :create, status: :created
		else
			render json: {error: 'invalid credentials'}, status: :unauthorized
		end
	end

	def destroy
		@user = User.find(params[:id])
		# debugger
		if @user.id == session[:user_id]
			session[:user_id] = nil
			render json: {message: "Sign out Successfully"}
		else
			render json: {error: "invalid	credentials"}, status: :unauthorized
		end
	end

end