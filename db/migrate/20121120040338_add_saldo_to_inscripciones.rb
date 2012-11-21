class AddSaldoToInscripciones < ActiveRecord::Migration
  def change
    add_column :inscripciones, :saldo, :integer

  end
end
