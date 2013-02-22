class Role < ActiveRecord::Base
  belongs_to :user
  attr_accessible :admin, :edit_role, :edit_user, :role_name
end
