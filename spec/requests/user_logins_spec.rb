require 'spec_helper'

describe "UserLogins" do
  it "should let user completes it's mail pastword" do
    visit( login_path )
    fill_in( 'Name', :with => 'diego.sanches@gmail.com' )
    fill_in( 'Password', :with => '12345' )
    click_button( 'log in' )
    page.should( page.has_content?( 'diego.sanches@gmail.com' ) )
  end
end
