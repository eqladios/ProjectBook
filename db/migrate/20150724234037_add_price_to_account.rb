class AddPriceToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :price, :integer
  end
end
