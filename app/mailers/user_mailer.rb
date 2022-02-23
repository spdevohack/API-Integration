class V1::UserMailer < ApplicationMailer
	def user_email(user)
		@user = user

		mail(from: ENV['SMTP_USER'], to: "ravinder@devohack.com", subject: "Invoiced Mail")
	end
end