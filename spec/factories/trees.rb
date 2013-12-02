# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tree do
    address "MyString"
    latitude 1.5
    longitude 1.5
    species "MyString"
  end
end
