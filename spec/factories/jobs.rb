# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    user nil
    title "MyString"
    description "MyString"
    salary 1.5
    group nil
  end
end
