class CreateAuspiciadores < ActiveRecord::Migration
  def change
    create_table :auspiciadores do |t|
      t.string :nombre
      t.string :image
      t.text :descripcion

      t.timestamps
    end
  end
end
