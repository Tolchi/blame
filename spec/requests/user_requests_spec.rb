require 'spec_helper'

describe "UserRequests", test: :request do
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

  after(:each) do
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
