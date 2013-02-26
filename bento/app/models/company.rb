class Company < ActiveRecord::Base
  has_many :users
  attr_accessible :company_name
end
