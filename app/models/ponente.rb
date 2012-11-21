class Ponente < ActiveRecord::Base
  validates_presence_of :nombre, :resumen, :image
  mount_uploader :image, ImageUploader
end
