require 'authentifier.rb'

class HomePageController < ApplicationController
  def main 
    @user = UsersFactory.find( session[:id] ) if session[:id]

    if @user 
      @you = @user.email
      @loggin_info = 'display: none'
      @session_info = ''
    end

  end

  def logins
    @user = UsersFactory.find( params[:email] )

    if Auth::Authentifier.isValid?( @user, params[:pass] ) 
      session[:id] = @user.id
    end

    redirect_to root_path
  end
end
