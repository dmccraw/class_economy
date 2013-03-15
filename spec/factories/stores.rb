# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store do
    group nil
    name "MyString"
    description "MyText"
    approved false
  end
end
