class Product < ApplicationRecord
    has_many :users
    has_many :users, through: :cart_items
    has_many :order_items 
end
