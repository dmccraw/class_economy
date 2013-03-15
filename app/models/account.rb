class Account < ActiveRecord::Base
  belongs_to :owner
  belongs_to :group
  attr_accessible :balance
end
