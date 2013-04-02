require 'spec_helper'
# this line above matters
describe "StaticPages" do

  describe "Home page" do
      before { visit root_path }

    it "should have the h1 'Job Machine App'" do
        #only the lines below matter + the 1 at the top of the page
      page.should have_selector('h1', :text => 'Home')
    end

     it "should have the base title" do
      page.should have_selector('title',
                        :text => "Job Machine App")
  end

  it "should not have a custom page title" do
    page.should_not have_selector('title', :text => '|Home')
  end
end



  describe "Help page" do

    it "should have the h1 'Help'" do
        visit help_path
        page.should have_selector('h1', :text => 'Help')
    end

     it "should have the base title" do
      visit help_path
      page.should have_selector('title',
                        :text => "Job Machine App")
  end
end

#   it "should not have a custom page title" do
#     visit '/static_pages/home'
#     page.should_not have_selector('title', :text => '|Help')
#   end
# end

  describe "Contact page" do

     it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the base title" do
      visit contact_path
      page.should have_selector('title',
                    :text => "Job Machine App")

    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
        visit about_path
        page.should have_selector('h1', :text => 'About Us')
    end

      it "should have the base title" do
      visit about_path
      page.should have_selector('title',
                        :text => "Job Machine App")
  end
end

#   it "should not have a custom page title" do
#     visit '/static_pages/home'
#     page.should_not have_selector('title', :text => '|About')
#     end
#   end
 end
















