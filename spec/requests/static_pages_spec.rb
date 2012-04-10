require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'scribe'" do
			visit '/static_pages/home'
      page.should have_content('scribe')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_selector('title', text: "scribe | Home")
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
  	end

    it "should have the title 'About Us'" do
    	visit '/static_pages/about'
    	page.should have_selector('title', text: "scribe | About Us")
    end
  end
end
