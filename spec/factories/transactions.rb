# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    from_account_id nil
    to_account_id nil
    group nil
    amount 1.5
    description "MyString"
    occurred_on "2013-03-05 16:41:58"
    user nil
  end
end
