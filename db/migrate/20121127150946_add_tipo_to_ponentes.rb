class AddTipoToPonentes < ActiveRecord::Migration
  def change
    add_column :ponentes, :tipo, :string

  end
end
