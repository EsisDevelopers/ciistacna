class CreatePonentes < ActiveRecord::Migration
  def change
    create_table :ponentes do |t|
      t.string :nombre
      t.string :resumen
      t.string :image
      t.text :descripcion

      t.timestamps
    end
  end
end
