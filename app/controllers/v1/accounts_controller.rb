module V1
	class AccountsController < ApplicationController

		def index
			@accounts = Current.user.accounts
			render :index, status: 200
		end

		def create
			debugger
			@account = Current.user.accounts.build(accounts_params)
			if @account.save
				render :create, status: :created
			else
				head(:unprocessable_entity)
			end
		end

		private
		def accounts_params
			params.require(:account).permit(:name, :owner_id)
		end
	end
end