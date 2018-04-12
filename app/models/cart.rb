class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products
  has_one :order

  before_create :generate_uuid

  def generate_uuid
    self.uuid = SecureRandom.hex(10)
  end

  def num_items
    self.cart_products.sum(:num)
  end

  def cart_value
    value = 0.0
    self.cart_products.each do |cp|
      value = value + (cp.num * cp.product.price)
    end
    return value
  end
end
