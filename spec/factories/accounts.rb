# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    owner nil
    group nil
    balance 1.5
  end
end
