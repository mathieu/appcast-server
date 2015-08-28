require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @latest_item = items(:two)
    @latest_item_mac = items(:one)
  end

  test "should get product's item :one for latest enclosure_mac" do
    get :show, format: :xml, id: @product.id 
    #assert_redirected_to 
    #product_item_path(assigns(@product), assigns(@item))/mac
  end

  # test "should have two items" do
  #   assert_equal(@product.items.count,2)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:products)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create product" do
  #   assert_difference('Product.count') do
  #     post :create, product: { description: @product.description, name: @product.name, title: @product.title }
  #   end

  #   assert_redirected_to product_path(assigns(:product))
  # end

  # test "should show product" do
  #   get :show, id: @product
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @product
  #   assert_response :success
  # end

  # test "should update product" do
  #   put :update, id: @product, product: { description: @product.description, name: @product.name, title: @product.title }
  #   assert_redirected_to product_path(assigns(:product))
  # end

  # test "should destroy product" do
  #   assert_difference('Product.count', -1) do
  #     delete :destroy, id: @product
  #   end

  #   assert_redirected_to products_path
  # end
end
