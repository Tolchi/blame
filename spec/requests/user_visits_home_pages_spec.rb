require 'spec_helper'

require 'capybara/rspec'

describe "UserVisitsHomePages", test: :request do
    it "must show home page" do
			visit '/'
			page.should have_content( 'Blame' )
    end
end
