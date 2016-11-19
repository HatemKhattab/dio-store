require 'rails_helper'

RSpec.feature 'Signing in' do
	it "dont sign in with fail credential" do
		visit '/'
		click_link 'Sign In'
		fill_in('Email', with: 'any text')
		fill_in('Password', with: 'any text')
		click_button 'Log in'

		expect(page).to have_content 'Invalid email or password'
 	end
end