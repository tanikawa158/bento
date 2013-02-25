class AddCompanyRoleToRole < ActiveRecord::Migration
  def change
    add_column :roles, :edit_company, :boolean
    add_column :roles, :edit_own_company, :boolean
  end
end
