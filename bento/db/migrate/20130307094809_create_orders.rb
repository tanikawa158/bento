class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.references :item
      t.string :user_name
      t.string :item_name
      t.integer :item_price
      t.integer :order_status

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :item_id
  end
end
