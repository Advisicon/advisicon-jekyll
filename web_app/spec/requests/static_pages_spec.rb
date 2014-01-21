require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Advisicon" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Advisicon') }
    it { should have_title("#{base_title}") }
    it { should_not have_title("| #{base_title}") } 
    it { should have_css 'meta[name="keywords"]', :visible => false }
    it { should have_selector('#carousel-slideshow') }
  end

  describe "Careers page" do
    before { visit careers_path }

    it { should have_content('Careers') }
    it { should have_title("Careers | #{base_title}") }
    it { should have_css 'meta[name="keywords"]', :visible => false }
    it { should_not have_selector('#carousel-slideshow') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title("About Us | #{base_title}") }
    it { should have_css 'meta[name="keywords"]', :visible => false }
    it { should_not have_selector('#carousel-slideshow') }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title("Contact | #{base_title}") }
    it { should have_css 'meta[name="keywords"]', :visible => false }
    it { should_not have_selector('#carousel-slideshow') }
  end
end
