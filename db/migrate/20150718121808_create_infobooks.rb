class CreateInfobooks < ActiveRecord::Migration
  def change
    create_table :infobooks do |t|
      t.string :title
      t.string :isbn
      t.string :author
      t.string :publisher
      t.string :rating
      t.text :descripton
      t.string :image_link

      t.timestamps null: false
    end
  end
end
