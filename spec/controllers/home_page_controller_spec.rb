require 'spec_helper'

describe HomePageController do
  describe "Not user logged in" do
    it "should return logging form visible" do
      visit root_path
      page.should has_css?('div hidden')
    end
  end

  describe "Once user's logged in" do
    it "should return logging form hidden" do
      pending "add XPath query"    
    end

    it "should return session info visible" do
      pending "add XPath query"
    end
  end 
end












