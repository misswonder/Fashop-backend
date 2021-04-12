class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  before_create :set_pricing
  after_commit :update_order_total

  def set_pricing
    self.price = product.price
    self.subtotal = price * quantity
  end

  def update_order_total
    order.update_total!
  end
  
end
