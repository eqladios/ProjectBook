require 'test_helper'

class BooksDBsControllerTest < ActionController::TestCase
  setup do
    @books_db = books_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create books_db" do
    assert_difference('BooksDb.count') do
      post :create, books_db: { author: @books_db.author, descripton: @books_db.descripton, image_link: @books_db.image_link, isbn: @books_db.isbn, publisher: @books_db.publisher, rating: @books_db.rating, title: @books_db.title }
    end

    assert_redirected_to books_db_path(assigns(:books_db))
  end

  test "should show books_db" do
    get :show, id: @books_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @books_db
    assert_response :success
  end

  test "should update books_db" do
    patch :update, id: @books_db, books_db: { author: @books_db.author, descripton: @books_db.descripton, image_link: @books_db.image_link, isbn: @books_db.isbn, publisher: @books_db.publisher, rating: @books_db.rating, title: @books_db.title }
    assert_redirected_to books_db_path(assigns(:books_db))
  end

  test "should destroy books_db" do
    assert_difference('BooksDb.count', -1) do
      delete :destroy, id: @books_db
    end

    assert_redirected_to books_dbs_path
  end
end
