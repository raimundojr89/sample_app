require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "shold have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails | Home")
    end
  end


#HELP
  describe "Help page" do
    it "shold have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    
    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails | Help")
    end
  end
  
#ABOUT
  describe "About page" do
    it "shold have the content 'About us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    
    it "should have the right title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails | About")
    end
  end
end

=begin
describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
end
=end
