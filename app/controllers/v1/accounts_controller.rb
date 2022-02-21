module V1
	class AccountsController < ApplicationController
		def create
			@account = current_user.accounts.build(accounts_params)

			if @account.save
				render :create, status: :created
			else
				head(:unprocessable_entity)
			end
		end

		private
		def accounts_params
			params.require(:account).permit(:name)
		end
	end
end