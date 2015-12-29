class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :item, index: true, foreign_key: true
      t.integer :price
      t.integer :amount

      t.timestamps null: false
    end
  end
end
