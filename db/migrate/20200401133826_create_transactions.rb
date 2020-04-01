class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :type, foreign_key: true
      t.references :store, foreign_key: true
      t.date :date
      t.float :value
      t.string :cpf
      t.string :card
      t.time :hour

      t.timestamps
    end
  end
end
