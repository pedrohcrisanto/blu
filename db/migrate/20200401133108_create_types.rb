class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :description
      t.string :nature
      t.string :signal

      t.timestamps
    end
  end
end
