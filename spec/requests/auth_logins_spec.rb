require 'spec_helper'

require 'debugger'

describe "AuthLogins" do
  it "should let user completes it's mail pastword" do
    visit( login_page_path )
    debugger
    page.fill_in( 'em', :with => 'diego.sanches@gmail.com' )
    page.fill_in( 'pass', :with => '12345' )
    click_button( 'log in' )
    page.should( page.has_content?( 'diego.sanches@gmail.com' ) )
  end
end
