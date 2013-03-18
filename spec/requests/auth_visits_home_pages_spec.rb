require 'spec_helper'

describe "AuthVisitsHomePages", test: :request do
    it "must show home page" do
			visit '/'
			page.should have_content( 'Blame' )
    end
end
