class Pin < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user, optional: true

    validates :title, :description, presence: true
    validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed"}
    validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum allowed"}
end
