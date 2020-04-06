class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :type_transaction
      t.string :nature
      t.string :store_owner
      t.string :store_name
      t.date :date
      t.float :value
      t.string :cpf
      t.string :card
      t.time :hour
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
