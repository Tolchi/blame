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
end
