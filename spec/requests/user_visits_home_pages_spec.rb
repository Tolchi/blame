require 'spec_helper'

require 'capybara/rspec'

describe "UserVisitsHomePages", test: :request do
    it "must show home page" do
			visit home_page_path
			page.should have_content 'Blame'
    end
end
