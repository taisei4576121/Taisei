class Tweet < ApplicationRecord
    belongs_to :user
    mount_uploader :video, VideoUploader
    mount_uploader :image, ImageUploader
    has_many :images, dependent: :destroy
end
