class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
