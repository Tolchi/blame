class SessionsController < ApplicationController
	def new
	end

	def show
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
		end	
		redirect_to root_url
	end
end
