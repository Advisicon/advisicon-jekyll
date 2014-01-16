require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Advisicon" }

  describe "Home page" do

    it "should have the content 'Advisicon'" do
      visit '/static_pages/home'
      expect(page).to have_content('Advisicon')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Home | #{base_title}")
    end
  end

  describe "Careers page" do

    it "should have the content 'Careers'" do
      visit '/static_pages/careers'
      expect(page).to have_content('Careers')
    end

    it "should have the right title" do
      visit '/static_pages/careers'
      expect(page).to have_title("Careers | #{base_title}")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us | #{base_title}")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact | #{base_title}")
    end
  end
end
