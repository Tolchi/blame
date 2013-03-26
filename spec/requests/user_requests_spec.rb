require 'spec_helper'
require 'users_factory'

describe "UserRequests", test: :request do
  before(:each) do
    @me = UsersFactory.new( :email => 'diego.sanches@gmail.com', :pass => '12345' )
    @me.save
  end

  after(:each) do
    @me.delete
  end 

  describe "Visiting home page" do
    it "must show home page" do
			visit root_path
			page.should have_content( 'Blame' )
    end
  end

  describe "Logging" do
    it "should let user completes it's mail pastword" do
      visit( root_path )

      page.fill_in( 'email', :with => @me.email )
      page.fill_in( 'pass', :with => @me.pass )
      click_button( 'LogIn' )

      page.should have_content(@me.email)
    end
  end
end
