require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails"}
  
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
      expect(page).to have_title(" #{base_title} | Help")
    end 
  end 
  
  describe "About Us page" do
    it "should include minimally 'About Us' in title and page" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
      expect(page).to have_title(" #{base_title} | About Us")
    end
  end 
  
  describe "Contact us page" do 
    it "should include Contact in title and on the page" do
      visit '/static_pages/contact'
      expect(page).to have_content("Contact")
      expect(page).to have_title("Contact")
    end 
  end 
  
  
end
