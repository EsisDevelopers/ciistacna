class AddTipoToFotos < ActiveRecord::Migration
  def change
    add_column :fotos, :tipo, :string

  end
end
