require 'authentifier.rb' 

class HomePageController < ApplicationController
	def main 
		@you = 'nobody'
	end

  def logins
		@you = 'diego.sanches@gmail.com'
		if not valid?( params['email'], params['pass'] ) 
			@notice = 'Wrong user - password'
			@session_info = ""
			@login_page = "display: none";	
		else
			@you = 'diego'
		end
		
		redirect_to root_path
  end

	def valid?( email, pass )
		return Auth::Authentifier.isValid?(email, pass )
	end
end
