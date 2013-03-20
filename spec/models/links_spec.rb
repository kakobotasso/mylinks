require 'spec_helper'

describe 'Links' do
	context 'Validations' do
		before(:each) do
			@link = Link.new
			@link.name = "Link Test"
			@link.link = "http://www.google.com"
			@link.category = 2
			@link.user_id = 1
		end

		it 'with valid data' do
			expect( @link.valid? ).to be_true
		end

		it 'with no data' do
			@link = Link.new
			expect( @link.valid? ).to be_false
		end

		it 'without name' do
			@link.name = nil
			expect( @link.valid? ).to be_false
		end

		it 'without link' do
			@link.link = nil
			expect( @link.valid? ).to be_false
		end

		it 'without category' do
			@link.category = nil
			expect( @link.valid? ).to be_false
		end

		it 'without user_id' do
			@link.user_id = nil
			expect( @link.valid? ).to be_false
		end

	end
	
end