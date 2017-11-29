class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.

  version :card_picture do
    cloudinary_transformation width: 500, height: 300, crop: :fit, gravity: :face
  end
end
