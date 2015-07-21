class CreateBooksDbs < ActiveRecord::Migration
  def change
    create_table :books_dbs do |t|
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
