require 'spec_helper'

describe "Links" do
	it "with invalid data" do
		link = Link.new
		expect( link.valid? ).to be_false
	end
end