class Listing < ApplicationRecord
  belongs_to :user
  serialize :photos,Array #this allow several pictures to be posted
  mount_uploaders :photos, PhotoUploader
end
