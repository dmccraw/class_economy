class Group < ActiveRecord::Base
  belongs_to :user_id
  attr_accessible :name
end
