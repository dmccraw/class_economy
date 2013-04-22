# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ActiveRecord::Base
  # associations
  belongs_to :user
  has_many :jobs
  has_many :stores

  attr_accessible :name, :user_id

  has_many :memberships
  has_many :users, through: :memberships, source: :user

  # valadations
  validate :user_id, :presence => true
  validate :name, :presence => true, length: { maximum: 255 }
end
