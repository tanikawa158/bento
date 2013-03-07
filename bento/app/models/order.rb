class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  attr_accessible :item_name, :item_price, :status, :user_name
end
