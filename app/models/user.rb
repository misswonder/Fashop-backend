class User < ApplicationRecord
    has_many :products
    has_many :products, through: :cart_items
    has_many :orders

    has_secure_password
    validates :email, uniqueness: { case_sensitive: true }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    
end
