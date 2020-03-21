class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.strings :ticker
      t.integer :user_id

      t.timestamps
    end
    add_index :stocks, :user_id
  end
end
