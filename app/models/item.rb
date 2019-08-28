class Item < ApplicationRecord
  belongs_to :user
  has_many :claims, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
