require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name		'John Doe'
    email		'john@doe.com'
    login		'johndoe'
    password	'123456'
  end

end