class Store < ActiveRecord::Base
  belongs_to :group
  attr_accessible :name, :description, :approved

  #Validations by JM
  validates_presence_of :name, :description, :approved, :group
end
