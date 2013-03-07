class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :goods_option
  belongs_to :company
  attr_accessible :name, :item_price
end
