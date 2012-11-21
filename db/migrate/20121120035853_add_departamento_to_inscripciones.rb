class AddDepartamentoToInscripciones < ActiveRecord::Migration
  def change
    add_column :inscripciones, :departamento, :string

  end
end
