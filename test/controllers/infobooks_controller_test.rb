require 'test_helper'

class InfobooksControllerTest < ActionController::TestCase
  setup do
    @infobook = infobooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infobooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create infobook" do
    assert_difference('Infobook.count') do
      post :create, infobook: { author: @infobook.author, descripton: @infobook.descripton, image_link: @infobook.image_link, isbn: @infobook.isbn, publisher: @infobook.publisher, rating: @infobook.rating, title: @infobook.title }
    end

    assert_redirected_to infobook_path(assigns(:infobook))
  end

  test "should show infobook" do
    get :show, id: @infobook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @infobook
    assert_response :success
  end

  test "should update infobook" do
    patch :update, id: @infobook, infobook: { author: @infobook.author, descripton: @infobook.descripton, image_link: @infobook.image_link, isbn: @infobook.isbn, publisher: @infobook.publisher, rating: @infobook.rating, title: @infobook.title }
    assert_redirected_to infobook_path(assigns(:infobook))
  end

  test "should destroy infobook" do
    assert_difference('Infobook.count', -1) do
      delete :destroy, id: @infobook
    end

    assert_redirected_to infobooks_path
  end
end
