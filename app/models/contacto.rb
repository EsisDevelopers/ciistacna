class Contacto < ActiveRecord::Base
  validates_presence_of :nombre, :mensaje
end
