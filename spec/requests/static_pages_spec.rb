require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails"}
  
  subject { page }

  describe "Home page" do
    
    before { visit root_path }
    
    it { should have_content('Sample App') }
    it { should_not have_title("| Home") }
    
  end

  
  
  describe "Help page" do
      before { visit help_path }
      
      it { should have_content('Help') }
      it { should have_title(full_title('Help')) } 
  end 
  
  describe "About Us page" do
    before { visit about_path }


      it { should have_content('About Us') }
      it { should have_title(full_title('About Us')) } 
      
    
  end 
  
  describe "Contact us page" do 
  
    before {visit contact_path}

      it { should have_content('Contact') }
      it { should have_title(full_title('Contact')) } 
      
  end 
  
  
end
