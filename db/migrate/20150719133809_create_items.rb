class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :isbn
      t.string :authors
      t.string :publisher
      t.integer :average_rating
      t.string :image_link

      t.timestamps null: false
    end
  end
end
