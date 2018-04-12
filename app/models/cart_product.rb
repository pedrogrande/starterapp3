class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def increment_num
    increment!(:num)
  end

  def decrement_num
    decrement!(:num)
  end
end
