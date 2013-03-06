class Store < ActiveRecord::Base
  belongs_to :group
  attr_accessible :approved, :description, :name
end
