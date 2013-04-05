require 'spec_helper'

describe "UserRequests", test: :request do
  describe "Visiting home page" do
    it "must show home page" do
			visit root_path
			page.should have_content( 'Blame' )
			page.should have_link('Sign Up')
			page.should have_link('Log In')
    end
  end

  describe "Logging" do
    it "should let u completes the mail password" do
#      u = FactoryGirl.create(:user)
#      visit( root_path )
#		
#      page.fill_in( 'email', :with => u.email )
#      page.fill_in( 'pass', :with => u.password )
#      click_button( 'LogIn' )
#
#      page.should have_content( 'Hi! ' + u.email )
    end
  end
end
