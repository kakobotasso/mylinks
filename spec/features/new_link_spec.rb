require 'spec_helper'

describe 'Link' do
	before(:each) do
		FactoryGirl.create(:user)
	end

	it 'create a new link', js: true do
		visit '/'
		fill_in 'login', with: 'johndoe'
		fill_in 'password', with: '123456'
		click_button 'login'

		click_link 'newlink'
		fill_in 'link_name', with: 'Test'
		select 'Facebook', from: 'link_category'
		fill_in 'link_link', with: 'http://test'
		click_button 'Create Link'

		assert_redirected_to dashboard_path
	end

	it 'without being logged in' do
		visit links_path
		expect(page).to have_text 'You must be logged in'
	end

end