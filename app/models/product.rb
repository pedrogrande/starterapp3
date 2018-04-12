class Product < ApplicationRecord
  belongs_to :seller_profile
  has_many :cart_products, dependent: :destroy
  has_many :carts, through: :cart_products
  has_many :line_items, dependent: :destroy
  has_many :orders, through: :line_items

  validates :name, :description, :price, :num_in_stock, presence: true
  validates :price, :num_in_stock, numericality: { greater_than_or_equal_to: 0 }

  mount_uploader :image, ProductImageUploader
end
