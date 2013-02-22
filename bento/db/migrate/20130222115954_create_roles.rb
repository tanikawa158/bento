class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role_name
      t.boolean :admin
      t.boolean :edit_user
      t.boolean :edit_role

      t.timestamps
    end
  end
end
