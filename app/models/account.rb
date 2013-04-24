# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  owner_type :string(255)
#  group_id   :integer
#  balance    :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  belongs_to :group

  attr_accessible :balance, :owner_id, :owner_type, :group_id
end
