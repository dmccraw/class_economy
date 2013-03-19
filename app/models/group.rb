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
  belongs_to :user
  has_many :jobs

  attr_accessible :name, :user_id


  #Valadations
  validate :user_id, :presence => true
  validate :name, :presence => true, length: { maximum: 255 }

end
