class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def increment_num
    update(num: self.num + 1)
  end
end
