class RemovePriceFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :price
  end
end
