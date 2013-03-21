class AuthController < ApplicationController
  def logins

		if not valid?( params['email'], params['pass'] ) 
			@notice = 'Wrong user - password'
			@session_info = ""
			@login_page = "display: none";	
		end
		
		redirect_to( '/' )
  end

	def valid?( email, pass )
		return ( email == 'diego.sanches@gmail.com' and pass == '12345')
	end
end
