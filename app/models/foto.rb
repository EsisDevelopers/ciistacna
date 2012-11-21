class Foto < ActiveRecord::Base
  validates_presence_of :nombre, :image
  mount_uploader :image, ImageUploader
end
