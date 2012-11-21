class Pagina < ActiveRecord::Base
  validates_presence_of :titulo, :subtitulo, :descripcion
  validates_uniqueness_of :titulo
end
