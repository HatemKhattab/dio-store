require 'rails_helper'

describe "home page" do

  it "view the home page" do
  	visit root_path
  	expect(page).to have_content "Home"
	end
	
	it "move to products page" do
		visit '/'
		click_link 'Shop now'
		expect(page).to have_content 'Welcome'
	end
end