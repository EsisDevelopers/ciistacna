class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :nombre
      t.string :image
      t.string :descripcion

      t.timestamps
    end
  end
end
