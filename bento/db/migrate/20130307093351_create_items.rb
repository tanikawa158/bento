class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :item_price
      t.references :category
      t.references :item_option
      t.references :company

      t.timestamps
    end
    add_index :items, :category_id
    add_index :items, :item_option_id
    add_index :items, :company_id
  end
end
