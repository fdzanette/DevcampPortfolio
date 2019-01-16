class PortfolioUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
