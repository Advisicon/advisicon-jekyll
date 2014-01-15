require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Advisicon'" do
      visit '/static_pages/home'
      expect(page).to have_content('Advisicon')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title('Home | Advisicon')
    end
  end

  describe "Careers page" do

    it "should have the content 'Careers'" do
      visit '/static_pages/careers'
      expect(page).to have_content('Careers')
    end

    it "should have the right title" do
      visit '/static_pages/careers'
      expect(page).to have_title('Careers | Advisicon')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title('About Us | Advisicon')
    end
  end
end
