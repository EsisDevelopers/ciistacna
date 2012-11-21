class CreatePaginas < ActiveRecord::Migration
  def change
    create_table :paginas do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :descripcion

      t.timestamps
    end
  end
end
