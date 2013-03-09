class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  attr_accessible :item_name, :item_price, :status, :user_name, :user_id, :item_id, :order_status
end
