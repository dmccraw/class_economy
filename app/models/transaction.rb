class Transaction < ActiveRecord::Base
  belongs_to :from_account_id
  belongs_to :to_account_id
  belongs_to :group
  belongs_to :user
  attr_accessible :amount, :description, :occurred_on

  #Validations
  validates :from_account_id, :to_account_id, :group, :user, :amount, :description, :occurred_on, :presence => true
  validates_associated :from_account_id, :to_account_id, :group, :user
  validates :amount, :numericality => {:greater_than => 0}
  validates :unique_accounts
  validates_date :occurred_on
  validates :validates_date

  #Custom Validations
  def unique_accounts
  	errors.add_to_base('To and From accounts must be different.') if
  	:to_account_id == :from_account_id
  end

  def valid_date
  	errors.add('Occured On must be less than or equal to today') if 
  	:occurred_on > today
  end
	
end
