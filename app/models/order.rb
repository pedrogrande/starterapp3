class Order < ApplicationRecord
  belongs_to :cart, :optional => true
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  validates :name, :email, :address, :suburb, :state, :postcode, :country, presence: true
end
