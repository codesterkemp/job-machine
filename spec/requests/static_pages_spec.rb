require 'spec_helper'
# this line above matters
describe "StaticPages" do

  describe "Home page" do


    it "should have the h1 'Job Machine App'" do
        #only the lines below matter + the 1 at the top of the page
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end

     it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Job Machine App | Home")
  end

  it "should not have a custom page title" do
    visit '/static_pages/home'
    page.should_not have_selector('title', :text => '|Home')
  end
end



  describe "Help page" do

    it "should have the h1 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => "Job Machine App | Help")
                           
  end
end

  describe "About page" do

    it "should have the h1 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('title',
                      :text => "Job Machine App | About Us")
    end
  end
end















