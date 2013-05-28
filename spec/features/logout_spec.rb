require 'spec_helper'

describe 'Logout' do
	before(:each) do
		FactoryGirl.create(:user)
	end

	it 'with a valid user', js: true do
		visit '/'
		fill_in 'login', with: 'johndoe'
		fill_in 'password', with: '123456'
		click_button 'login'
		
		click_link 'logout'
		expect(page).to have_text 'Login'
		expect(page).to have_text 'Password'
	end

end