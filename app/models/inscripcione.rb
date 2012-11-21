class Inscripcione < ActiveRecord::Base
  validates_presence_of :nombre, :correo
  validates_uniqueness_of :nombre
  validates :correo,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
