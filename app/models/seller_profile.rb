class SellerProfile < ApplicationRecord
  belongs_to :user
  has_many :products

  validates :address, :suburb, :state, :postcode, :country, presence: true

  after_validation :geocode
  geocoded_by :full_address

  mount_uploader :logo, SellerProfileLogoUploader

  extend FriendlyId
  friendly_id :name, use: :slugged


  def full_address
    [address, suburb, state, postcode, country].join(', ')
  end

end
