require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(isbn: 1234567890, title:"Ruby", edition: 1,publisher: "Carl", description: "Best Rails Book of All time")
  end
  
  test "book should be valid" do
    assert @book.valid?
  end
  
  test "title should be present" do
    @book.title = ""
    assert_not @book.valid?
  end
  
  test "title length < 100" do
    @book.title = "a" * 101
    assert_not @book.valid?
  end
  
  test "title length > 5" do
    @book.title = "aaaaa"
    assert_not @book.valid?
  end
end