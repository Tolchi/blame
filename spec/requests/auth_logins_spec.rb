require 'spec_helper'

describe "AuthLogins" do
  it "should let user completes it's mail pastword" do
    visit( root_path )

    page.fill_in( 'email', :with => 'diego.sanches@gmail.com' )
    page.fill_in( 'pass', :with => '12345' )
    click_button( 'Sign in' )

    page.should have_content('diego.sanches@gmail.com')
  end
end
