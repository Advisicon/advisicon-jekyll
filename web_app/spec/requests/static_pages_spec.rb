require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
    it { should have_css 'meta[name="keywords"]', :visible => false }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Advisicon' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should have_selector('#carousel-slideshow') }
  end

  describe "Careers page" do
    before { visit careers_path }
    let(:heading)    { 'Careers' }
    let(:page_title) { 'Careers' }

    it_should_behave_like "all static pages"
    it { should_not have_selector('#carousel-slideshow') }
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About Us' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
    it { should_not have_selector('#carousel-slideshow') }
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
    it { should_not have_selector('#carousel-slideshow') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About Us"
    expect(page).to have_title(full_title('About Us'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Careers"
    expect(page).to have_title(full_title('Careers'))
    click_link "Advisicon"
    expect(page).to have_title(full_title(''))
  end
end
