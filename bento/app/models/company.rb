class Company < ActiveRecord::Base
  has_many :user
  attr_accessible :company_name
end
