class CreateInscripciones < ActiveRecord::Migration
  def change
    create_table :inscripciones do |t|
      t.string :nombre
      t.string :correo
      t.string :institucion
      t.string :estado

      t.timestamps
    end
  end
end
