require 'rails_helper'
#require 'spec_helper'

RSpec.describe "Static pages", :type => :request do
  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
  #    get static_pages_index_path
  #    expect(response.status).to be(200)
  #  end
  #end

  let(:base_title) {"Ruby on Rails Tutorial Sample App 2"}

  subject { page }

  describe "Home page" do
  	before { visit root_path }

    it { should have_content('Sample App') }
  	it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

end
