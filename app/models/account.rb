class Account < ActiveRecord::Base
   
  def self.import(isbn)
    book_data = GoogleBooks.search(isbn).first
    account = Account.new
    account.title = book_data.title
    account.isbn = book_data.isbn
    account.authors = book_data.authors
    account.publisher = book_data.publisher
    account.average_rating = book_data.average_rating
    account.image_link = book_data.image_link
    account.categories = book_data.categories
    account.save
  end
  
end