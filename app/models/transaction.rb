class Transaction < ActiveRecord::Base
  belongs_to :from_account_id
  belongs_to :to_account_id
  belongs_to :group
  belongs_to :user
  attr_accessible :amount, :description, :occurred_on
end
