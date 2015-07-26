class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :isbn
      t.string :authors
      t.string :publisher
      t.integer :average_rating
      t.string :image_link
      t.string :categories

      t.timestamps null: false
    end
  end
end
