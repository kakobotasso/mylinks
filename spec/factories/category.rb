require 'factory_girl'

FactoryGirl.define do
  factory :category do
    name			'test category'
    slug			'test-category'
    user_id			1
    description		'Test category for test'
  end

end