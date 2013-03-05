class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  attr_accessible :description, :salary, :title
end
