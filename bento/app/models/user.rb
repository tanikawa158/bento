class User < ActiveRecord::Base
  has_secure_password
  belongs_to :role
  belongs_to :company
  validates_presence_of :password, :on => :create
  validates :user_name, :presence => true, :uniqueness => true, :format => { :with => /[a-zA-Z0-9]+/i }
  attr_accessible :company_id, :password, :role_id, :user_name, :password_confirmation
end
