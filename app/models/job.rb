# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string(255)
#  description :string(255)
#  salary      :float
#  group_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  validate :title, length: { maximum: 255 }

  attr_accessible :description, :salary, :title
end
