require 'test_helper'

class PricerowsControllerTest < ActionController::TestCase
  setup do
    @pricerow = pricerows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pricerows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pricerow" do
    assert_difference('Pricerow.count') do
      post :create, pricerow: { affix: @pricerow.affix, product_id: @pricerow.product_id, value: @pricerow.value }
    end

    assert_redirected_to pricerow_path(assigns(:pricerow))
  end

  test "should show pricerow" do
    get :show, id: @pricerow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pricerow
    assert_response :success
  end

  test "should update pricerow" do
    patch :update, id: @pricerow, pricerow: { affix: @pricerow.affix, product_id: @pricerow.product_id, value: @pricerow.value }
    assert_redirected_to pricerow_path(assigns(:pricerow))
  end

  test "should destroy pricerow" do
    assert_difference('Pricerow.count', -1) do
      delete :destroy, id: @pricerow
    end

    assert_redirected_to pricerows_path
  end
end
