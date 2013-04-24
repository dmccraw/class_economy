# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  group_id    :integer
#  name        :string(255)
#  description :text
#  approved    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Store < ActiveRecord::Base
  belongs_to :group
  attr_accessible :name, :description, :approved

  #Validations by JM
  validates_presence_of :name, :description, :approved, :group
end
