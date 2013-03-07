class AddCommissionOfItemToRole < ActiveRecord::Migration
  def change
    add_column :roles, :edit_own_item, :boolean
    add_column :roles, :edit_all_item, :boolean
  end
end
