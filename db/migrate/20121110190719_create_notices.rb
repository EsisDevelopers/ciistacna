class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :titulo
      t.string :resumen
      t.text :descripcion

      t.timestamps
    end
  end
end
