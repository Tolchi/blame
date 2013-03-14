require 'spec_helper'

describe "UserVisitsHomePages" do
    it "must show home page" do
			visit home_page_path		
			page.should have_content 'Blame'
      response.status.should be(200)
    end
end
