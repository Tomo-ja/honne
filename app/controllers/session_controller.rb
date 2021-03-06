class SessionController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			login user
			redirect_to root_path
		else
			flash.now[:danger] = "Invaild email/password conbination"
			render 'new'
		end
	end

	def destroy
		log_out if logged_in?
		redirect_to root_path
	end
end
