class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.integer :edition
      t.string :publisher
      t.text :description
      t.timestamps
    end
  end
end
