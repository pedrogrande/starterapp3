class ProductImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
