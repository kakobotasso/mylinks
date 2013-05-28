require 'spec_helper'

describe 'Login' do
	before(:each) do
		FactoryGirl.create(:user)
	end

	it 'with a valid user', js: true do
		visit '/'
		fill_in 'login', with: 'johndoe'
		fill_in 'password', with: '123456'
		click_button 'login'
		expect(page).to have_text 'welcome'
	end

	it 'with an invalid user', js: true do
		visit '/'
		fill_in 'login', with: 'johndoe'
		fill_in 'password', with: '654321'
		click_button 'login'
		expect(page).to have_text 'There was a mistake here. Please, try again'
	end 
end