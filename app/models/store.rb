class Store < ActiveRecord::Base
  belongs_to :group
  attr_accessible :approved, :description, :name

  #Validations by JM
  validates :group, :presence => true
  validates :approved, :presence => true
  validates :description, :presence => true
  validates :name, :presence => true
end
