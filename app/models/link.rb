class Link < ActiveRecord::Base

  validates :url, :photo, :notes, presence: true
  mount_uploader :photo, PhotoUploader
end
