require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get pasta" do
    get :pasta
    assert_response :success
  end

  test "should get warm" do
    get :warm
    assert_response :success
  end

  test "should get dessert" do
    get :dessert
    assert_response :success
  end

  test "should get cakes" do
    get :cakes
    assert_response :success
  end

end
