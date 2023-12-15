class Image < ApplicationRecord
  belongs_to :tweet
  mount_uploader :image, ImageUploader
end
