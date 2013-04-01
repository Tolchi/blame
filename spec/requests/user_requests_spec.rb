require 'spec_helper'

describe "UserRequests", test: :request do
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

  describe "Visiting home page" do
    it "must show home page" do
			visit root_path
			page.should have_content( 'Blame' )
    end
  end

  describe "Logging" do
    it "should let user completes the mail password" do
      visit( root_path )
		
      page.fill_in( 'email', :with => @me.email )
      page.fill_in( 'pass', :with => @me.pass )
      click_button( 'LogIn' )

      page.should have_content( 'Hi! ' + @me.email )
    end
  end
end
