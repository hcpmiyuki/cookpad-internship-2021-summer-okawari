class Order < ApplicationRecord
  attr_accessor :items
  belongs_to :pickup_location
  belongs_to :user
  has_many :order_records
  has_many :relationships, class_name:  "OrderRecord",
                                  foreign_key: "order_id",
                                  dependent:   :destroy
  has_many :products, through: :relationships, source: :product

  # order.itemsを作る
  def create_items
    items = []
    order_records.each do |record|
      product = record.product
      quantity = record.quantity
      items.push({product:product, quantity: quantity})
    end
    self.items = items
  end
end