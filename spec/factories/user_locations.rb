# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_location do
    user nil
    location nil
  end
end
