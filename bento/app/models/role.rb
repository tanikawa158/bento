class Role < ActiveRecord::Base
  has_many :user
  attr_accessible :admin, :edit_role, :edit_user, :role_name, :edit_company, :edit_own_campany
end
