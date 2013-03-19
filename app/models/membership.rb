# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  attr_accessible :title, :body

  validates :user_id, presence: true
  validates_uniqueness_of :user_id, :scope => :group_id

end
