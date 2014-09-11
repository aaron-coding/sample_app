require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    
    it "should have the content 'Sample App' in title and page" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
      expect(page).to have_title("Home")
      end
    end
  
  
  describe "Help page" do
    it "should include the content 'Help' in title and page" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title("Help")
    end 
  end 
  
  describe "About Us page" do
    it "should include minimally 'About Us' in title and page" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
      expect(page).to have_title("About Us")
    end
  end 
  

  
  
end
