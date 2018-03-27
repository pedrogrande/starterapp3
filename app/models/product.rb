class Product < ApplicationRecord
  belongs_to :seller_profile

  validates :name, :description, :price, :num_in_stock, presence: true
  validates :price, :num_in_stock, numericality: { greater_than_or_equal_to: 0 }

  mount_uploader :image, ProductImageUploader
end
