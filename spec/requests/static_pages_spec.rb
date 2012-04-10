require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'scribe'" do
			visit '/static_pages/home'
      page.should have_selector('h1', text: 'scribe')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', text: "scribe")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('title', text: "scribe | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

    it "should have the title 'About Us'" do
    	visit '/static_pages/about'
    	page.should have_selector('title', text: "scribe | About Us")
    end
  end

  describe "Contact page" do
  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_content('Contact')
  	end

  	it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', text: "scribe | Contact")
  	end
  end
end
