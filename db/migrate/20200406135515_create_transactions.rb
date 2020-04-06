class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :type
      t.string :nature
      t.string :store_owner
      t.string :store_name
      t.date :date
      t.float :value
      t.string :cpf
      t.string :card
      t.time :hour

      t.timestamps
    end
  end
end
