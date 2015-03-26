require 'test_helper'

class CategoryPagesControllerTest < ActionController::TestCase
  setup do
    @category_page = category_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_page" do
    assert_difference('CategoryPage.count') do
      post :create, category_page: { image: @category_page.image, name: @category_page.name }
    end

    assert_redirected_to category_page_path(assigns(:category_page))
  end

  test "should show category_page" do
    get :show, id: @category_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_page
    assert_response :success
  end

  test "should update category_page" do
    patch :update, id: @category_page, category_page: { image: @category_page.image, name: @category_page.name }
    assert_redirected_to category_page_path(assigns(:category_page))
  end

  test "should destroy category_page" do
    assert_difference('CategoryPage.count', -1) do
      delete :destroy, id: @category_page
    end

    assert_redirected_to category_pages_path
  end
end
