require 'authentifier.rb'

class HomePageController < ApplicationController
  def main 
      puts "main", @you, @loggin_info, @session_info
  end

  def logins
    if Auth::Authentifier.isValid?( params[:email], params[:pass] ) 
      puts "logins", "User/Password is valid"
      @you = params[:email]
      @loggin_info = 'display: none'
      @session_info = ''

      puts "logins", @you, @loggin_info, @session_info
    end

    redirect_to root_path
  end
end
