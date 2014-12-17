require 'test_helper'

class UserHasProductsControllerTest < ActionController::TestCase
  setup do
    @user_has_product = user_has_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_has_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_has_product" do
    assert_difference('UserHasProduct.count') do
      post :create, user_has_product: { platform: @user_has_product.platform, service: @user_has_product.service, tier: @user_has_product.tier }
    end

    assert_redirected_to user_has_product_path(assigns(:user_has_product))
  end

  test "should show user_has_product" do
    get :show, id: @user_has_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_has_product
    assert_response :success
  end

  test "should update user_has_product" do
    patch :update, id: @user_has_product, user_has_product: { platform: @user_has_product.platform, service: @user_has_product.service, tier: @user_has_product.tier }
    assert_redirected_to user_has_product_path(assigns(:user_has_product))
  end

  test "should destroy user_has_product" do
    assert_difference('UserHasProduct.count', -1) do
      delete :destroy, id: @user_has_product
    end

    assert_redirected_to user_has_products_path
  end
end
