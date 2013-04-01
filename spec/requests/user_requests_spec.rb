require 'spec_helper'

describe "UserRequests", test: :request do
  describe "Visiting home page" do
    it "must show home page" do
			visit root_path
			page.should have_content( 'Blame' )
    end
  end

  describe "Logging" do
    it "should let user completes the mail password" do
      user = FactoryGirl.create(:users_factory)
      visit( root_path )
		
      page.fill_in( 'email', :with => user.email )
      page.fill_in( 'pass', :with => user.pass )
      click_button( 'LogIn' )

      page.should have_content( 'Hi! ' + user.email )
    end
  end

  describe "Logging Failed" do
    it "should not let user gets logged in" do
      user = FactoryGirl.create(:users_factory)
      visit( root_path )
		
      page.fill_in( 'email', :with => '<wrong_user>' )
      page.fill_in( 'pass', :with => '<wrong_pass>' )
      click_button( 'LogIn' )

			page.should have_selector( 'div.warning')
      page.should_not have_content( 'Hi! ' + user.email )
    end
  end
end
