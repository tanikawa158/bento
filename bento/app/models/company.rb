class Company < ActiveRecord::Base
  has_many :users
  has_many :items
  attr_accessible :company_name
end
