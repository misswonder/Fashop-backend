class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  before_save :update_total
  
  def update_total
    self.total = order_items.pluck(:subtotal).reduce(:+)
  end

  def update_total!
    update_total
    save!
  end
  
end
