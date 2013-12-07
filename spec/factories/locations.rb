# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    city "MyString"
    state "MyString"
    bioregion "MyString"
    political_region "MyString"
  end
end
