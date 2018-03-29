class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products

  before_create :generate_uuid

  def generate_uuid
    self.uuid = SecureRandom.hex(10)
  end

  def num_items
    self.cart_products.count
  end
end
