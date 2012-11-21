class AddTipoToInscripciones < ActiveRecord::Migration
  def change
    add_column :inscripciones, :tipo, :string

  end
end
