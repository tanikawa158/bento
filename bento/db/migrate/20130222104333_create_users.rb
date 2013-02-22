class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.integer :campany_id
      t.integer :role_id

      t.timestamps
    end
  end
end
