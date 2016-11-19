require 'rails_helper'

describe "home page" do

  it "view the home page" do
  	visit root_path
  	expect(page).to have_content "Home"
	end
end