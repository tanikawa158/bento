class User < ActiveRecord::Base
  has_secure_password
  belongs_to :role
  validates_presence_of :password, :on => :create
  attr_accessible :campany_id, :password, :role_id, :user_name, :password_confirmation
end
