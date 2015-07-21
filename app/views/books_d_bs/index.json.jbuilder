json.array!(@books_dbs) do |books_db|
  json.extract! books_db, :id, :title, :isbn, :author, :publisher, :rating, :descripton, :image_link
  json.url books_db_url(books_db, format: :json)
end
