<<<<<<< HEAD
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
=======
require 'authentifier.rb'

class HomePageController < ApplicationController
  def main 
    @user = UsersFactory.find( session[:id] ) if session[:id]

    if @user 
      @you = @user.email
      @loggin_class = 'hidden'
    end

  end

  def logins
    users = UsersFactory.where( :email => params[:email] )

    if not users.empty? and \
      Auth::Authentifier.isValid?( users.first, params[:pass] ) 
      session[:id] = users.first.id
    end

    redirect_to root_path
  end
>>>>>>> f5367270584f424bcfe1eef0b29ecf98e6744b24
end
