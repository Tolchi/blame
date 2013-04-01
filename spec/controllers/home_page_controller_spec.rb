require 'spec_helper'

describe HomePageController do
	# Before each spec
  before(:each) do
    users = UsersFactory.where( 'email = ?', \
      'diego.sanches@gmail.com' )

    if not users.empty?
      @me = users.first
    else
      @me = UsersFactory.new( :email => 'diego.sanches@gmail.com', \
        :pass => '12345' )
      @me.save
    end

  end

  describe "Not user logged in" do
    it "should return logging form visible" do
      pending "add XPath query"
    end
  end

  describe "Once user's logged in" do
    it "should return logging form hidden" do
      visit root_path

			puts page

      page.fill_in( 'email', :with => @me.email )
      page.fill_in( 'pass', :with => @me.pass )
      click_button( 'LogIn' )

			page.has_css?( 'div.hidden')

    end

    it "should return session info visible" do
      pending "add XPath query"
    end
  end 
end












