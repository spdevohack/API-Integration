class ApplicationController < ActionController::API
	before_action :set_current_user

	def set_current_user
		Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
	end

	def current_account
    @current_account ||= Account.friendly.find(params[:account_id])
  end
end
