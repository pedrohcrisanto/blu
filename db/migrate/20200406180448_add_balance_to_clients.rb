class AddBalanceToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :balance, :float
  end
end
